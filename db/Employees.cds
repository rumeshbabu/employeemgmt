namespace sap.acte.emp;

using {
    managed,
    Language
} from '@sap/cds/common';

entity Employees : managed {
    key empNo          : String(5) not null;
        empName        : String(20) not null;
        empSex         : String(1) not null;
        empDesignation : String(20);
        empAddress     : String(200);
        empCity        : String(50);
        empCountry     : Association to one CountryCode;
        empEmail       : String(10) not null;
        empPhoneNo     : Integer not null;
        empExperience  : Composition of many EmpExperience
                             on empExperience.employee = $self;
}

entity EmpExperience : managed {

    employee       : Association to one Employees;
    orgName        : String(20);
    startDate      : Date;
    endDate        : Date;
    orgLocation    : String(10);
    orgCurrentFlag : Boolean

}

entity CountryCode {
        /**
         * The ISO-3166 2-char code of the country.
         */
    key code : String(2);
        /**
         * Name of countries.
         */
        name : String(100) not null;
}
