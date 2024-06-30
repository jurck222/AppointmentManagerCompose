# ApppointmentManager docker compose

## Description

Docker compose file for the app Appointment manager.

Sets up docker images for :

- user-service
- appointment-service
- availability-service
- eureka-server
- service-gateway
- angular-app

To pull the images and setup the app run the command in your terminal:

```bash
docker compose up -d
```

## Generated users

Docker compose will create images for databases that are used in the services. The sql script provided in this repo will create the following users for testing purposes:

1. Lojze Slak:

   - email: <lojze@example.com>
   - geslo: pacient

2. Testko Testic:

   - email: <testko@example.com>
   - geslo: doktor
   - services: General checkup, Dermatology consultation,Cardiology consultation, Dental cleaning

3. Janez Kranjski:

   - email: <janez@example.com>
   - geslo: pacient

4. Joze Pacient:

   - email: <joze@example.com>
   - geslo: pacient

5. Janka Jovankovic:

   - email: <janka@example.com>
   - geslo: doktor
   - services: General checkup, Cardiology consultation, Dental cleaning

6. Zeljko Joksimovic:

   - email: <zeljko.jok@example.com>
   - geslo: doktor
   - services: Dental cleaning, Dermatology consultation

7. Corey Taylor:

   - email: <corey.tay@example.com>
   - geslo: pacient

## App workflow

The recommended workflow for testing is as follows:

### 1. Log in to a doctor account and add availability times.
   
   ![login](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/0a3c745f-9f5d-4715-9574-cedb3bce3b85)

   ![add availability](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/e9b46f67-dc28-434f-8125-874a75180f90)

   ![added availability](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/5e67028e-185d-4913-b266-958624b2a52c)

### 2. Try to delete availability.

   ![delete availability](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/6de1188f-f540-472e-8874-8883cf8c6031)
   
### 3. Log in to a patient account.
### 4. Select a service and wait for the app to fetch doctors for selected service.

   ![select service](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/35befa61-06a4-4d11-bdbc-037508f993d2)

### 5. Select a doctor you wish to visit.

   ![doctors](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/aabf8130-0129-4e19-88f6-edf38daf7447)

### 6. Wait for the app to fetch availabilities for selected doctor.

   ![open slots](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/673acca6-c034-4576-9cdb-0f1cba8e3af7)

### 7. Select availability to book an appointment.

   ![book appointment](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/0bd83a65-41f2-43bb-871c-64d8a2a569a6)

### 8. The new appointment should be added to your appointment list.

   ![booked appointments](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/b0736685-9fe1-4b3e-9635-30709e25c89c)

### 9. Create another appointment.
### 10. Delete one of the appointments.

   ![remove appointment](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/044f9f0b-e286-41f4-8e9c-a8eea03a9d22)

### 11. The availability for that appointment should be back in the free availability list.
### 12. Log out of the patient account.
### 13. Log back in to the doctor account that you previously used to create availability.
### 14. There should be a scheduled appointment in you appointment list.

   ![appointments doctor](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/207201d1-fbda-4191-a5b8-78c48bdd0c3f)

### 15. Try to delete the appointment.
### 16. After the appointment is deleted it should be back in the availability list.

Feel free to experiment more.

## Links to app repositories

- Eureka server: <https://github.com/jurck222/eureka-server>
- Service gateway: <https://github.com/jurck222/gateway-service>
- User service: <https://github.com/jurck222/user-service>
- Appointment service: <https://github.com/jurck222/appointment-service>
- Availability service: <https://github.com/jurck222/availability-service>
- Angular frontend: <https://github.com/jurck222/AppointmentManagerFE>

## Diagram
![diagram](https://github.com/jurck222/AppointmentManagerCompose/assets/56190152/bd94b239-7dc6-46d0-a223-8b74ee206b88)
