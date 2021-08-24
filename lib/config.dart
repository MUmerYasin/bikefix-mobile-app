

import 'dart:ui';


/// Colors in Project

Color backgroundColor = Color(0xffc4c4c4);
Color buttonColor = Color(0xffE34D3D);

//backgroundColor: NeumorphicColors.background,

/// Screen Title of All Screen
const String screenTitleChooseBikeBrand = "Choose Bike Brand";
const String screenTitlePaymentMethod = "Payment Method";
const String screenTitleMyProfile = "My Profile";
const String screenTitleLocation = "Location";
const String screenTitleMyVehicle = "My Vehicle";
const String screenTitleMyBookings = "My Bookings";
const String screenTitleStatusService = "Status Service";
const String screenTitleAddVehicle = "Add Vehicle";

/// Text Font Family
const String textFontFamily = "Roboto";

///Text Field Titles of Choose Bike Brand.
const String textFieldName = "Name";
const String textFieldDOB = "DOB";
const String textFieldGender = "Gender";
const String textFieldPhone = "Phone";
const String textFieldNameFind = "Find";
const String textFieldPhoneNumber = "Phone Number";
const String textFieldEmail = "Email";
const String textFieldStreet = "Street";
const String textFieldCity = "City";
const String textFieldZipCode = "Zip Code";
const String textFieldYear = "Year";

///----Drop Down Menu----

///First option In Drop Down Menu
const String dropDownMenuChooseBrand = "Choose Brand";
const String dropDownMenuChooseModel = "Choose Model";
const String dropDownMenuSelect = "Select";
const String dropDownMenuSelectBudget = "Select Budget";
const String dropDownMenuSelectLocation = "Select Location";
const String dropDownMenuBrand = "Brand";
const String dropDownMenuModel = "Model";
const String dropDownMenuYear = "Year";
const String dropDownMenuColor = "Color";

/// All option in Drop Down Menu // List show in Drop Down Menu

var chooseBrandListDropDownMenu = <String>[
  dropDownMenuChooseBrand,
  companyNameKTM,
  companyNameTVS,
  companyNameBajaj,
  companyNameRoyalEnfield,
  companyNameHero,
  companyNameMahindra,
  companyNameJawaMoto,
  companyNameHonda,
  companyNameSuzuki,
  companyNameYamahaMotors
];

///Buttons Name
const String buttonNameHome = "Home";
const String buttonNameLogIn = "Log In";
const String buttonNameSignUp = "Sign Up";
const String buttonNameConfirm = "Confirm";
const String buttonNameCancel = "Cancel";
const String buttonNameResend = "Resend";
const String buttonNameSave = "Save";
const String buttonNameOffice = "Office";
const String buttonNameSaveAddr = "Save Addr.";
const String buttonNameNeedHelp = "Need Help ?";
const String buttonNameConnect = "Connect";
const String buttonNameProceed = "Proceed";
const String buttonNameFeedback = "Feedback";
const String buttonNameOther = "Other";

/// Company names
const String companyNameKTM = "KTM";
const String companyNameTVS = "TVS";
const String companyNameBajaj = "Bajaj";
const String companyNameRoyalEnfield = "Royal enfield";
const String companyNameHero = "Hero";
const String companyNameMahindra = "Mahindra";
const String companyNameJawaMoto = "Jawa Moto";
const String companyNameHonda = "Honda";
const String companyNameSuzuki = "Suzuki";
const String companyNameYamahaMotors = "Yamaha Motors";

/// Bike Details
const String bikeDetailsHundredDuke = " 200 Duke";
const String bikeDetailsHalfEngineOverhaul = "Half Engine Overhaul";
const String bikeDetailsServiceComplete = "Service Complete";
const String bikeDetailsAwaitingConfirmation = "Awaiting Confirmation";


///All Texts in GridView of Choose Bike Brand.
const String gridViewChooseBikeBrandText1 = companyNameKTM;
const String gridViewChooseBikeBrandText2 = companyNameTVS;
const String gridViewChooseBikeBrandText3 = companyNameBajaj;
const String gridViewChooseBikeBrandText4 = companyNameRoyalEnfield;

///All Images Path in GridView of Choose Bike Brand.
// Main icon path
const String ImagePathStart = "assets/icons/";

const String bikeFixUpLogoImagePath = ImagePathStart+"logo.png";
const String ktmLogoImagePath = ImagePathStart+"ktm_logo.png";
const String ktmSmallIconImagePath = ImagePathStart+"ktm_icon.png";
const String tvsLogoImagePath = ImagePathStart+"tvs_logo.png";
const String bajajLogoImagePath = ImagePathStart+"bajaj_logo.png";
const String royalEnfieldLogoImagePath = ImagePathStart+"royal_enfield_logo.png";
const String paytmLogoImagePath = ImagePathStart+"paytm_logo.png";
const String phonePeLogoImagePath = ImagePathStart+"phonepe_logo.png";
const String otpIconImagePath = ImagePathStart+"otp_icon.png";
const String mapImagePath = ImagePathStart+"map.png";
const String bikeImageImagePath = ImagePathStart+"bike_image.png";


///Payment Method Text
const String creditDebitCardText = "Credit / Debit Card";
const String UPIText = "UPI";
const String AmazonUPIText = "Amazon "+ UPIText;
const String PhonePeText = "PhonePe";
const String WalletsText = "Wallets";
const String PaytmText = "Paytm";
const String PayLaterText = "Pay later";
const String paymentConfirmedText = "Payment Confirmed";

/// Simple Text That use in all Screens

const String signUpDescriptionText = "Don’t Have account? ";
const String logInDescriptionText = "If already user, ";
const String pleaseEnterOTPDescriptionText = "Please enter OTP";
const String mailDescriptionText = "mail@mail.com";
const String dateDescriptionText = "01/01/2022";
const String timeDescriptionText = "03:45 pm";
const String timeDateDescriptionText = dateDescriptionText +"   "+ timeDescriptionText;
const String maleDescriptionText = "Male";
const String currentLocationDescriptionText = " Use Current Location";
const String addVehicleDescriptionText = " Add Vehicle";
const String naDescriptionText = " NA";
const String fuelTypeText = "Fuel Type";

const String bookingDateTimeText = "Booking date & time";
const String pickupDateTimeText = "Pickup date & time";
const String DeliveryDateTimeText = "Delivery date & time";
const String PriceWithTitleAndValueText = "Price: ₹ 2,500";