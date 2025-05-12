```mermaid
erDiagram
    Doctors {
        int doctor_id PK
        varchar first_name
        varchar second_name
        varchar field_area
        varchar email
        varchar phone
    }

    Patients {
        int patient_id PK
        varchar first_name
        varchar second_name
        varchar email
        varchar phone
        date admission_date
    }

    Treatments {
        int treatment_id PK
        varchar type_of_treatment
        text doctor_recommendation
    }

    Admission {
        int admission_id PK
        int patient_id FK
        int doctor_id FK
        datetime admission_date
        text description_for_admission
    }

    Doctors ||--o{ Admission : "treats"
    Patients ||--o{ Admission : "has"
} 