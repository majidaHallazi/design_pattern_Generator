package com.example.notification_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.kafka.annotation.KafkaListener;



@Service
public class NotificationService {

    @Autowired
    private NotificationRepository notificationRepository;

    @Autowired
    private JavaMailSender javaMailSender;

    @KafkaListener(topics = "projectGenerationSuccess", groupId = "notificationServiceGroup")
    public void listenForSuccess(ProjectGenerationStatus status) {
        // Create and save the notification in MongoDB
        Notification notification = new Notification();
        notification.setMessage("Project generation successful: " + status.getProjectName());
        notification.setStatus("SUCCESS");
        notificationRepository.save(notification);

        // Send email notification
        sendEmail("user@example.com", "Project generation successful",
                "The project " + status.getProjectName() + " has been successfully generated.");
    }

    @KafkaListener(topics = "projectGenerationError", groupId = "notificationServiceGroup")
    public void listenForError(ProjectGenerationError error) {
        // Create and save the error notification in MongoDB
        Notification notification = new Notification();
        notification.setMessage("Project generation failed: " + error.getErrorMessage());
        notification.setStatus("ERROR");
        notificationRepository.save(notification);

        // Send email notification
        sendEmail("dmaj3900@gmail.com", "Project generation failed",
                "There was an error during project generation: " + error.getErrorMessage());
    }

    private void sendEmail(String toEmail, String subject, String text) {
        try {
            // Construct the email message
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(toEmail);  // Dynamic recipient email address
            message.setSubject(subject);
            message.setText(text);

            // Send the email
            javaMailSender.send(message);
            System.out.println("Email sent successfully to " + toEmail);

        } catch (Exception e) {
            System.err.println("Error sending email: " + e.getMessage());
            // Log the error for troubleshooting
        }
    }
}
