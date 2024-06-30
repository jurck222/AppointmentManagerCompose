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

1. Log in to a doctor account and add availability times.
2. Try to delete availability.
3. Log in to a patient account.
4. Select a service and wait for the app to fetch doctors for selected service.
5. Select a doctor you wish to visit.
6. Wait for the app to fetch availabilities for selected doctor.
7. Select availability in confirm your selection.
8. The new appointment should be added to your appointment list.
9. Create another appointment.
10. Delete one of the appointments.
11. The availability for that appointment should be back in the free availability list.
12. Log out of the patient account.
13. Log back in to the doctor account that you previously used to create availability.
14. There should be a scheduled appointment in you appointment list.
15. Try to delete the appointment.
16. After the appointment is deleted it should be back in the availability list.

Feel free to experiment more.

## Links to app repositories

- Eureka server: <https://github.com/jurck222/eureka-server>
- Service gateway: <https://github.com/jurck222/gateway-service>
- User service: <https://github.com/jurck222/user-service>
- Appointment service: <https://github.com/jurck222/appointment-service>
- Availability service: <https://github.com/jurck222/availability-service>
- Angular frontend: <https://github.com/jurck222/AppointmentManagerFE>
