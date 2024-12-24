package com.example.notification_service;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDateTime;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
@Document
public class Notification {

    @Id
    private String id;
    private String Message;
    private String Status;
    private LocalDateTime notificationDate;

    public String getId() {
        return id;
    }

    public String getMessage() {
        return Message;
    }

    public String getStatus() {
        return Status;
    }

    public LocalDateTime getNotificationDate() {
        return notificationDate;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public void setNotificationDate(LocalDateTime notificationDate) {
        this.notificationDate = notificationDate;
    }
}
