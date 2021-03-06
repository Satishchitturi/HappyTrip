USE [master]
GO
/****** Object:  Database [HappyTrip_Iteration3]    Script Date: 07/29/2013 09:47:38 ******/
CREATE DATABASE [HappyTrip_Iteration3]
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'HappyTrip_Iteration3', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HappyTrip_Iteration3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HappyTrip_Iteration3] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET ARITHABORT OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HappyTrip_Iteration3] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HappyTrip_Iteration3] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HappyTrip_Iteration3] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET  DISABLE_BROKER
GO
ALTER DATABASE [HappyTrip_Iteration3] SET AUTO_UPDATE_STATISTICS_ASYNC ON
GO
ALTER DATABASE [HappyTrip_Iteration3] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HappyTrip_Iteration3] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HappyTrip_Iteration3] SET  READ_WRITE
GO
ALTER DATABASE [HappyTrip_Iteration3] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HappyTrip_Iteration3] SET  MULTI_USER
GO
ALTER DATABASE [HappyTrip_Iteration3] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HappyTrip_Iteration3] SET DB_CHAINING OFF
GO
USE [HappyTrip_Iteration3]
GO
/****** Object:  ForeignKey [FK_travel_miles_redemption_travel_miles_redemption]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[travel_miles_redemption] DROP CONSTRAINT [FK_travel_miles_redemption_travel_miles_redemption]
GO
/****** Object:  ForeignKey [Relationship67]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Flights] DROP CONSTRAINT [Relationship67]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__51300E55]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__51300E55]
GO
/****** Object:  ForeignKey [Relationship77]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Cities] DROP CONSTRAINT [Relationship77]
GO
/****** Object:  ForeignKey [Relationship88]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [Relationship88]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__4E53A1AA]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__4E53A1AA]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__5224328E]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__5224328E]
GO
/****** Object:  ForeignKey [Relationship90]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingPayments] DROP CONSTRAINT [Relationship90]
GO
/****** Object:  ForeignKey [Relationship78]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingContacts] DROP CONSTRAINT [Relationship78]
GO
/****** Object:  ForeignKey [Relationship89]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingCancelations] DROP CONSTRAINT [Relationship89]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__607251E5]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__607251E5]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__6166761E]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__6166761E]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__55F4C372]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__55F4C372]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__56E8E7AB]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__56E8E7AB]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__531856C7]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__531856C7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__540C7B00]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__540C7B00]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__55009F39]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__55009F39]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__5F7E2DAC]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__5F7E2DAC]
GO
/****** Object:  ForeignKey [Relationship81]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightClasses] DROP CONSTRAINT [Relationship81]
GO
/****** Object:  ForeignKey [Relationship82]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightClasses] DROP CONSTRAINT [Relationship82]
GO
/****** Object:  ForeignKey [Relationship73]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookings] DROP CONSTRAINT [Relationship73]
GO
/****** Object:  ForeignKey [Relationship85]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookings] DROP CONSTRAINT [Relationship85]
GO
/****** Object:  ForeignKey [FK_FlightBookingInsurances_Bookings]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookingInsurances] DROP CONSTRAINT [FK_FlightBookingInsurances_Bookings]
GO
/****** Object:  ForeignKey [Relationship68]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [Relationship68]
GO
/****** Object:  ForeignKey [Relationship69]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [Relationship69]
GO
/****** Object:  ForeignKey [Relationship96]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Hotels] DROP CONSTRAINT [Relationship96]
GO
/****** Object:  ForeignKey [Relationship86]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[UserBookings] DROP CONSTRAINT [Relationship86]
GO
/****** Object:  ForeignKey [Relationship87]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[UserBookings] DROP CONSTRAINT [Relationship87]
GO
/****** Object:  ForeignKey [Relationship70]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Schedules] DROP CONSTRAINT [Relationship70]
GO
/****** Object:  ForeignKey [Relationship71]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Schedules] DROP CONSTRAINT [Relationship71]
GO
/****** Object:  ForeignKey [Relationship92]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelRooms] DROP CONSTRAINT [Relationship92]
GO
/****** Object:  ForeignKey [Relationship93]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelRooms] DROP CONSTRAINT [Relationship93]
GO
/****** Object:  ForeignKey [FK__HotelRevi__Hotel__6AEFE058]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelReviews] DROP CONSTRAINT [FK__HotelRevi__Hotel__6AEFE058]
GO
/****** Object:  ForeignKey [FK__HotelRevi__Revie__6BE40491]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelReviews] DROP CONSTRAINT [FK__HotelRevi__Revie__6BE40491]
GO
/****** Object:  ForeignKey [FK__HotelRevi__UserI__6CD828CA]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelReviews] DROP CONSTRAINT [FK__HotelRevi__UserI__6CD828CA]
GO
/****** Object:  ForeignKey [HotelId]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelBookings] DROP CONSTRAINT [HotelId]
GO
/****** Object:  ForeignKey [Relationship74]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelBookings] DROP CONSTRAINT [Relationship74]
GO
/****** Object:  ForeignKey [Relationship79]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Passengers] DROP CONSTRAINT [Relationship79]
GO
/****** Object:  ForeignKey [FK_FlightBookingSchedules_FlightBookings]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightBookingSchedules] DROP CONSTRAINT [FK_FlightBookingSchedules_FlightBookings]
GO
/****** Object:  ForeignKey [FK_FlightBookingSchedules_Schedules]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightBookingSchedules] DROP CONSTRAINT [FK_FlightBookingSchedules_Schedules]
GO
/****** Object:  ForeignKey [Relationship83]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightCosts] DROP CONSTRAINT [Relationship83]
GO
/****** Object:  ForeignKey [Relationship84]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightCosts] DROP CONSTRAINT [Relationship84]
GO
/****** Object:  ForeignKey [Booking]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[HotelBookingRooms] DROP CONSTRAINT [Booking]
GO
/****** Object:  ForeignKey [RoomType]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[HotelBookingRooms] DROP CONSTRAINT [RoomType]
GO
/****** Object:  StoredProcedure [dbo].[CheckAvailabilityOfSchedule]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[CheckAvailabilityOfSchedule]
GO
/****** Object:  StoredProcedure [dbo].[BookFlightTicket]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[BookFlightTicket]
GO
/****** Object:  StoredProcedure [dbo].[GetFlightBookingByBookingReferenceNo]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetFlightBookingByBookingReferenceNo]
GO
/****** Object:  StoredProcedure [dbo].[GetFlightSchedules]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetFlightSchedules]
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlightAndCosts]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetScheduleFlightAndCosts]
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlightCost]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetScheduleFlightCost]
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlightsAndCosts]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetScheduleFlightsAndCosts]
GO
/****** Object:  StoredProcedure [dbo].[GetSeatBookingsForScheduleAndClassID]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetSeatBookingsForScheduleAndClassID]
GO
/****** Object:  StoredProcedure [dbo].[GetTravelInventoryDetails]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetTravelInventoryDetails]
GO
/****** Object:  StoredProcedure [dbo].[InsertFlightTicketSchedule]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[InsertFlightTicketSchedule]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlightCost]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[UpdateFlightCost]
GO
/****** Object:  StoredProcedure [dbo].[UpdateSchedule]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[UpdateSchedule]
GO
/****** Object:  StoredProcedure [dbo].[InsertPassengerDetails]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[InsertPassengerDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetTravelInventory]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetTravelInventory]
GO
/****** Object:  StoredProcedure [dbo].[getScheduleDetails_BasedID]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[getScheduleDetails_BasedID]
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlight]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetScheduleFlight]
GO
/****** Object:  Table [dbo].[HotelBookingRooms]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[HotelBookingRooms] DROP CONSTRAINT [Booking]
GO
ALTER TABLE [dbo].[HotelBookingRooms] DROP CONSTRAINT [RoomType]
GO
DROP TABLE [dbo].[HotelBookingRooms]
GO
/****** Object:  StoredProcedure [dbo].[InsertSchedule]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[InsertSchedule]
GO
/****** Object:  StoredProcedure [dbo].[GetFlightClassesForSchedule]    Script Date: 07/29/2013 09:48:12 ******/
DROP PROCEDURE [dbo].[GetFlightClassesForSchedule]
GO
/****** Object:  Table [dbo].[FlightCosts]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightCosts] DROP CONSTRAINT [Relationship83]
GO
ALTER TABLE [dbo].[FlightCosts] DROP CONSTRAINT [Relationship84]
GO
DROP TABLE [dbo].[FlightCosts]
GO
/****** Object:  Table [dbo].[FlightBookingSchedules]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightBookingSchedules] DROP CONSTRAINT [FK_FlightBookingSchedules_FlightBookings]
GO
ALTER TABLE [dbo].[FlightBookingSchedules] DROP CONSTRAINT [FK_FlightBookingSchedules_Schedules]
GO
DROP TABLE [dbo].[FlightBookingSchedules]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[AddHotel]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[AddHotel]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[GetFlightClasses]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[GetFlightClasses]
GO
/****** Object:  StoredProcedure [dbo].[GetCitiesWithHotels]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[GetCitiesWithHotels]
GO
/****** Object:  StoredProcedure [dbo].[GetFlightAndClasses]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[GetFlightAndClasses]
GO
/****** Object:  StoredProcedure [dbo].[GetFlightsAndFlightClasses]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[GetFlightsAndFlightClasses]
GO
/****** Object:  StoredProcedure [dbo].[GetHotels]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[GetHotels]
GO
/****** Object:  StoredProcedure [dbo].[GetRouteId]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[GetRouteId]
GO
/****** Object:  StoredProcedure [dbo].[GetRoutes]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[GetRoutes]
GO
/****** Object:  Table [dbo].[Passengers]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Passengers] DROP CONSTRAINT [Relationship79]
GO
DROP TABLE [dbo].[Passengers]
GO
/****** Object:  Table [dbo].[HotelBookings]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelBookings] DROP CONSTRAINT [HotelId]
GO
ALTER TABLE [dbo].[HotelBookings] DROP CONSTRAINT [Relationship74]
GO
DROP TABLE [dbo].[HotelBookings]
GO
/****** Object:  Table [dbo].[HotelReviews]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelReviews] DROP CONSTRAINT [FK__HotelRevi__Hotel__6AEFE058]
GO
ALTER TABLE [dbo].[HotelReviews] DROP CONSTRAINT [FK__HotelRevi__Revie__6BE40491]
GO
ALTER TABLE [dbo].[HotelReviews] DROP CONSTRAINT [FK__HotelRevi__UserI__6CD828CA]
GO
ALTER TABLE [dbo].[HotelReviews] DROP CONSTRAINT [DF__HotelRevi__UserI__4B7734FF]
GO
DROP TABLE [dbo].[HotelReviews]
GO
/****** Object:  Table [dbo].[HotelRooms]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelRooms] DROP CONSTRAINT [Relationship92]
GO
ALTER TABLE [dbo].[HotelRooms] DROP CONSTRAINT [Relationship93]
GO
DROP TABLE [dbo].[HotelRooms]
GO
/****** Object:  StoredProcedure [dbo].[InsertBookingForUser]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[InsertBookingForUser]
GO
/****** Object:  StoredProcedure [dbo].[InsertRoute]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[InsertRoute]
GO
/****** Object:  StoredProcedure [dbo].[UpdateHotel]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[UpdateHotel]
GO
/****** Object:  StoredProcedure [dbo].[UpdateRoutes]    Script Date: 07/29/2013 09:48:11 ******/
DROP PROCEDURE [dbo].[UpdateRoutes]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Schedules] DROP CONSTRAINT [Relationship70]
GO
ALTER TABLE [dbo].[Schedules] DROP CONSTRAINT [Relationship71]
GO
ALTER TABLE [dbo].[Schedules] DROP CONSTRAINT [DF_Schedules_IsActive]
GO
DROP TABLE [dbo].[Schedules]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 07/29/2013 09:48:11 ******/
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 07/29/2013 09:48:11 ******/
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 07/29/2013 09:48:10 ******/
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 07/29/2013 09:48:10 ******/
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 07/29/2013 09:48:10 ******/
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlightClass]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[UpdateFlightClass]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 07/29/2013 09:48:10 ******/
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 07/29/2013 09:48:10 ******/
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 07/29/2013 09:48:10 ******/
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  Table [dbo].[UserBookings]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[UserBookings] DROP CONSTRAINT [Relationship86]
GO
ALTER TABLE [dbo].[UserBookings] DROP CONSTRAINT [Relationship87]
GO
ALTER TABLE [dbo].[UserBookings] DROP CONSTRAINT [DF__UserBooki__UserI__498EEC8D]
GO
DROP TABLE [dbo].[UserBookings]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlight]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[UpdateFlight]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Hotels] DROP CONSTRAINT [Relationship96]
GO
DROP TABLE [dbo].[Hotels]
GO
/****** Object:  Table [dbo].[Routes]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [Relationship68]
GO
ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [Relationship69]
GO
ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [DF_Routes_DistanceInKms]
GO
ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [DF_Routes_Status]
GO
DROP TABLE [dbo].[Routes]
GO
/****** Object:  StoredProcedure [dbo].[GetFlightsID]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[GetFlightsID]
GO
/****** Object:  StoredProcedure [dbo].[GetCitiyById]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[GetCitiyById]
GO
/****** Object:  StoredProcedure [dbo].[GetCities]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[GetCities]
GO
/****** Object:  StoredProcedure [dbo].[GetFlights]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[GetFlights]
GO
/****** Object:  StoredProcedure [dbo].[AddFlight]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[AddFlight]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 07/29/2013 09:48:10 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  Table [dbo].[FlightBookingInsurances]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookingInsurances] DROP CONSTRAINT [FK_FlightBookingInsurances_Bookings]
GO
DROP TABLE [dbo].[FlightBookingInsurances]
GO
/****** Object:  Table [dbo].[FlightBookings]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookings] DROP CONSTRAINT [Relationship73]
GO
ALTER TABLE [dbo].[FlightBookings] DROP CONSTRAINT [Relationship85]
GO
DROP TABLE [dbo].[FlightBookings]
GO
/****** Object:  Table [dbo].[FlightClasses]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightClasses] DROP CONSTRAINT [Relationship81]
GO
ALTER TABLE [dbo].[FlightClasses] DROP CONSTRAINT [Relationship82]
GO
DROP TABLE [dbo].[FlightClasses]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__5F7E2DAC]
GO
DROP TABLE [dbo].[aspnet_Profile]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__540C7B00]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__55009F39]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [DF__aspnet_Perso__Id__43D61337]
GO
DROP TABLE [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__531856C7]
GO
DROP TABLE [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__55F4C372]
GO
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__56E8E7AB]
GO
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [DF__aspnet_Me__Passw__44CA3770]
GO
DROP TABLE [dbo].[aspnet_Membership]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__607251E5]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__6166761E]
GO
DROP TABLE [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  Table [dbo].[BookingCancelations]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingCancelations] DROP CONSTRAINT [Relationship89]
GO
ALTER TABLE [dbo].[BookingCancelations] DROP CONSTRAINT [DF__BookingCa__Cance__46B27FE2]
GO
DROP TABLE [dbo].[BookingCancelations]
GO
/****** Object:  Table [dbo].[BookingContacts]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingContacts] DROP CONSTRAINT [Relationship78]
GO
DROP TABLE [dbo].[BookingContacts]
GO
/****** Object:  Table [dbo].[BookingPayments]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingPayments] DROP CONSTRAINT [Relationship90]
GO
ALTER TABLE [dbo].[BookingPayments] DROP CONSTRAINT [DF__BookingPa__Payme__45BE5BA9]
GO
DROP TABLE [dbo].[BookingPayments]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__5224328E]
GO
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [DF__aspnet_Ro__RoleI__42E1EEFE]
GO
DROP TABLE [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 07/29/2013 09:48:09 ******/
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__4E53A1AA]
GO
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__UserI__3D2915A8]
GO
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__Mobil__3E1D39E1]
GO
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__IsAno__3F115E1A]
GO
DROP TABLE [dbo].[aspnet_Users]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [Relationship88]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [DF__Bookings__Bookin__1BC821DD]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [DF__Bookings__IsCanc__1CBC4616]
GO
DROP TABLE [dbo].[Bookings]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Cities] DROP CONSTRAINT [Relationship77]
GO
DROP TABLE [dbo].[Cities]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__51300E55]
GO
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [DF__aspnet_Pa__PathI__41EDCAC5]
GO
DROP TABLE [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  StoredProcedure [dbo].[DeductHappyMilesForCancellation]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[DeductHappyMilesForCancellation]
GO
/****** Object:  StoredProcedure [dbo].[GetHappyMilesForBookingReference]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[GetHappyMilesForBookingReference]
GO
/****** Object:  StoredProcedure [dbo].[GetRoomTypes]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[GetRoomTypes]
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Flights] DROP CONSTRAINT [Relationship67]
GO
DROP TABLE [dbo].[Flights]
GO
/****** Object:  StoredProcedure [dbo].[GetAirLines]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[GetAirLines]
GO
/****** Object:  StoredProcedure [dbo].[GetTravelMilesForUser]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[GetTravelMilesForUser]
GO
/****** Object:  StoredProcedure [dbo].[GetStates]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[GetStates]
GO
/****** Object:  StoredProcedure [dbo].[GetTravelClass]    Script Date: 07/29/2013 09:48:08 ******/
DROP PROCEDURE [dbo].[GetTravelClass]
GO
/****** Object:  Table [dbo].[travel_miles_redemption]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[travel_miles_redemption] DROP CONSTRAINT [FK_travel_miles_redemption_travel_miles_redemption]
GO
DROP TABLE [dbo].[travel_miles_redemption]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 07/29/2013 09:48:08 ******/
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[UpdateTravelMiles]    Script Date: 07/29/2013 09:48:06 ******/
DROP PROCEDURE [dbo].[UpdateTravelMiles]
GO
/****** Object:  Table [dbo].[States]    Script Date: 07/29/2013 09:48:06 ******/
DROP TABLE [dbo].[States]
GO
/****** Object:  Table [dbo].[travel_miles]    Script Date: 07/29/2013 09:48:05 ******/
DROP TABLE [dbo].[travel_miles]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 07/29/2013 09:48:05 ******/
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [DF__Reviews__DateCre__3A4CA8FD]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [DF__Reviews__IsRepor__3B40CD36]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [DF__Reviews__IsActiv__3C34F16F]
GO
DROP TABLE [dbo].[Reviews]
GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 07/29/2013 09:48:05 ******/
DROP TABLE [dbo].[RoomTypes]
GO
/****** Object:  Table [dbo].[booking_miles]    Script Date: 07/29/2013 09:48:05 ******/
DROP TABLE [dbo].[booking_miles]
GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 07/29/2013 09:48:05 ******/
DROP TABLE [dbo].[Airlines]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 07/29/2013 09:48:05 ******/
ALTER TABLE [dbo].[aspnet_Applications] DROP CONSTRAINT [DF__aspnet_Ap__Appli__395884C4]
GO
DROP TABLE [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 07/29/2013 09:48:05 ******/
DROP TABLE [dbo].[Classes]
GO
/****** Object:  Table [dbo].[BookingTypes]    Script Date: 07/29/2013 09:48:04 ******/
DROP TABLE [dbo].[BookingTypes]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 07/29/2013 09:48:04 ******/
DROP TABLE [dbo].[aspnet_WebEvent_Events]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 07/29/2013 09:48:04 ******/
DROP TABLE [dbo].[aspnet_SchemaVersions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 07/29/2013 09:47:59 ******/
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 07/29/2013 09:47:59 ******/
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  FullTextCatalog [HappyTrip]    Script Date: 07/29/2013 09:47:38 ******/
DROP FULLTEXT CATALOG [HappyTrip]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  User [HappyTrip]    Script Date: 07/29/2013 09:47:38 ******/
DROP USER [HappyTrip]
GO
/****** Object:  User [HappyTrip]    Script Date: 07/29/2013 09:47:38 ******/
CREATE USER [HappyTrip] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 07/29/2013 09:47:38 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  FullTextCatalog [HappyTrip]    Script Date: 07/29/2013 09:47:38 ******/
CREATE FULLTEXT CATALOG [HappyTrip]
AS DEFAULT
AUTHORIZATION [dbo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 07/29/2013 09:47:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 07/29/2013 09:47:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 07/29/2013 09:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_SchemaVer__0F975522] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 07/29/2013 09:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
 CONSTRAINT [PK__aspnet_WebEvent___09DE7BCC] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingTypes]    Script Date: 07/29/2013 09:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](25) NOT NULL,
 CONSTRAINT [pk_BookingTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__BookingTypes__07F6335A] UNIQUE NONCLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingTypes] ON
INSERT [dbo].[BookingTypes] ([TypeId], [Title]) VALUES (1, N'Flight')
INSERT [dbo].[BookingTypes] ([TypeId], [Title]) VALUES (2, N'Hotel')
INSERT [dbo].[BookingTypes] ([TypeId], [Title]) VALUES (3, N'Taxi')
SET IDENTITY_INSERT [dbo].[BookingTypes] OFF
/****** Object:  Table [dbo].[Classes]    Script Date: 07/29/2013 09:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassType] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_Classes] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Classes__0519C6AF] UNIQUE NONCLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Classes] ON
INSERT [dbo].[Classes] ([ClassId], [ClassType]) VALUES (1, N'Economy')
INSERT [dbo].[Classes] ([ClassId], [ClassType]) VALUES (2, N'Business')
SET IDENTITY_INSERT [dbo].[Classes] OFF
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 07/29/2013 09:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Ap__Appli__395884C4]  DEFAULT (newid()),
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_Applicati__023D5A04] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_Applicati__00551192] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_Applicati__014935CB] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/HappyTrip', N'/happytrip', N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'Travel Portal')
/****** Object:  Table [dbo].[Airlines]    Script Date: 07/29/2013 09:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlines](
	[AirlineId] [int] IDENTITY(1,1) NOT NULL,
	[AirlineName] [nvarchar](100) NOT NULL,
	[AirlineCode] [nvarchar](10) NOT NULL,
	[AirlineLogo] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_Airlines] PRIMARY KEY CLUSTERED 
(
	[AirlineId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Airlines__7E6CC920] UNIQUE NONCLUSTERED 
(
	[AirlineName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Airlines] ON
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (2, N'Air India - India', N'AI', N'AirIndia')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (3, N'Air India - Sahara', N'IX-X', N'AIR INDIA EXPRESS')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (4, N'GoAir', N'G8.', N'GO AIRWAYS')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (5, N'IndiGo', N'6E', N'INDIGO')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (6, N'Kingfisher Airlines', N'IT', N'KINGFISHER AIRLINE')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (7, N'Jet Airways', N'JA', N'JET AIRWAYS')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (8, N'SpiceJet', N'SG', N'SPICEJET')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (9, N'KF', N'KFL', N'KKKK')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (10, N'British Airways', N'BAW', N'BAW')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (11, N'JetAir', N'JA-01', N'F:\Corporate Training\Pratian\HT-FinalRel-15May2013\airimg\JetKonnect.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (12, N'SrinuAirline', N'Srinu', N'test')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (14, N'SpiceJets', N'IT', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (15, N'acd', N'IT', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (16, N'BlueSky', N'BS007', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (17, N'AIR', N'123', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (19, N'AIRI', N'456+3', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (20, N'AIRII', N'123', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (21, N'Thava', N'TTT', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (22, N'Jet', N'J', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (23, N'king', N'k001', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (24, N'Knight', N'k002', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (25, N'New Airline Four', N'AL - 123sa', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (27, N'Air Asia', N'AirAisa1', N'Images/air_logos/air_logos3.gif')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (28, N'Air-Line', N'AC-1', N'Images/air_logos/air_logos3.gif')
SET IDENTITY_INSERT [dbo].[Airlines] OFF
/****** Object:  Table [dbo].[booking_miles]    Script Date: 07/29/2013 09:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking_miles](
	[bookingmilesid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](256) NOT NULL,
	[bookingrefno] [nvarchar](256) NOT NULL,
	[happymiles] [int] NOT NULL,
 CONSTRAINT [PK_booking_miles] PRIMARY KEY CLUSTERED 
(
	[bookingmilesid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[booking_miles] ON
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (12, N'anand@pratian.com', N'HTRP21', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (13, N'anand@pratian.com', N'HTRP26', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (17, N'srinu@pratian.com', N'HTRP38', 7800)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (18, N'srinu@pratian.com', N'HTRP39', 2300)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (19, N'srinu@pratian.com', N'HTRP40', 2300)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (20, N'anand@pratian.com', N'HTRP55', 3450)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (21, N'anand@pratian.com', N'HTRP56', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (22, N'anand@pratian.com', N'HTRP57', 3450)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (23, N'anand@pratian.com', N'HTRP58', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (24, N'admin', N'HTRP59', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (25, N'kk@pratian.com', N'HTRP69', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (26, N'kk@pratian.com', N'HTRP70', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (27, N'kk@pratian.com', N'HTRP71', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (28, N'kk@pratian.com', N'HTRP72', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (29, N'kk@pratian.com', N'HTRP73', 10000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (30, N'srikanthreddy@mail.com', N'HTRP77', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (32, N'kk@pratian.com', N'HTRP80', 18000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (34, N'vk@pratian.com', N'HTRP82', 2000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (36, N'vk@pratian.com', N'HTRP84', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (38, N'thavamuni@gmail.com', N'HTRP87', 2000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (39, N'thavamuni@gmail.com', N'HTRP88', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (41, N'kk@pratian.com', N'HTRP91', 2335)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (42, N'kk@pratian.com', N'HTRP92', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (43, N'kk@pratian.com', N'HTRP93', 1195)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (44, N'kk@pratian.com', N'HTRP94', 3000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (45, N'kk@pratian.com', N'HTRP95', 1300)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (47, N'shash@gmail.com', N'HTRP97', 1300)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (48, N'shash@gmail.com', N'HTRP98', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (49, N'shash@gmail.com', N'HTRP99', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (51, N'shashank@gmail.com', N'HTRP101', 0)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (52, N'shashank@gmail.com', N'HTRP102', 4000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (53, N'shashank@gmail.com', N'HTRP103', 4000)
INSERT [dbo].[booking_miles] ([bookingmilesid], [username], [bookingrefno], [happymiles]) VALUES (54, N'shashank@gmail.com', N'HTRP106', 2000)
SET IDENTITY_INSERT [dbo].[booking_miles] OFF
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 07/29/2013 09:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Code] [nvarchar](5) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [pk_RoomTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__RoomTypes__1273C1CD] UNIQUE NONCLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoomTypes] ON
INSERT [dbo].[RoomTypes] ([TypeId], [Title], [Description], [Code], [IsActive]) VALUES (1, N'Deluxe Non AC', N'Deluxe Non AC', N'DNA', 1)
INSERT [dbo].[RoomTypes] ([TypeId], [Title], [Description], [Code], [IsActive]) VALUES (2, N'Deluxe  AC', N'Deluxe  AC', N'DAC', 1)
INSERT [dbo].[RoomTypes] ([TypeId], [Title], [Description], [Code], [IsActive]) VALUES (3, N'Super Deluxe AC', N'Super Deluxe AC', N'SDA', 1)
INSERT [dbo].[RoomTypes] ([TypeId], [Title], [Description], [Code], [IsActive]) VALUES (4, N'Super Deluxe Non AC', N'Super Deluxe Non AC', N'SDN', 1)
INSERT [dbo].[RoomTypes] ([TypeId], [Title], [Description], [Code], [IsActive]) VALUES (5, N'Suite', N'Suite', N'SUI', 1)
INSERT [dbo].[RoomTypes] ([TypeId], [Title], [Description], [Code], [IsActive]) VALUES (6, N'Super Suite', N'Super Suite', N'SSU', 1)
SET IDENTITY_INSERT [dbo].[RoomTypes] OFF
/****** Object:  Table [dbo].[Reviews]    Script Date: 07/29/2013 09:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [bigint] IDENTITY(1,1) NOT NULL,
	[ReviewText] [nvarchar](500) NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF__Reviews__DateCre__3A4CA8FD]  DEFAULT (getdate()),
	[IsReportAbused] [bit] NOT NULL CONSTRAINT [DF__Reviews__IsRepor__3B40CD36]  DEFAULT ((0)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF__Reviews__IsActiv__3C34F16F]  DEFAULT ((1)),
 CONSTRAINT [pk_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Reviews__15502E78] UNIQUE NONCLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[travel_miles]    Script Date: 07/29/2013 09:48:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[travel_miles](
	[travelmileid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](256) NOT NULL,
	[travelmiles] [int] NOT NULL,
 CONSTRAINT [PK_travel_miles] PRIMARY KEY CLUSTERED 
(
	[travelmileid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[travel_miles] ON
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (3, N'anand@pratian.com', 18900)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (4, N'kk@pratian.com', 38830)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (5, N'srinu@pratian.com', 12400)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (6, N'admin', 0)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (7, N'srikanthreddy@mail.com', 3000)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (8, N'vk@pratian.com', 2000)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (9, N'thavamuni@gmail.com', 5000)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (10, N'shash@gmail.com', 1300)
INSERT [dbo].[travel_miles] ([travelmileid], [username], [travelmiles]) VALUES (11, N'shashank@gmail.com', 10000)
SET IDENTITY_INSERT [dbo].[travel_miles] OFF
/****** Object:  Table [dbo].[States]    Script Date: 07/29/2013 09:48:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [bigint] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__States__1A14E395] UNIQUE NONCLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[States] ON
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (1, N'Andaman and Nicobar Islands')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (2, N'Andhra Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (3, N'NULArunachal PradeshL')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (4, N'Assam')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (5, N'Bihar')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (6, N'Chhattisgarh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (7, N'Daman and Diu')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (8, N'Delhi')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (9, N'Goa')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (10, N'Gujarat')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (11, N'Haryana')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (12, N'Himachal Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (13, N'Jammu & Kashmir')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (14, N'Jharkhand')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (15, N'Karnataka')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (16, N'Kerala')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (17, N'Lakshadweep')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (18, N'Madhya Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (19, N'Maharashtra')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (20, N'Manipur')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (21, N'Meghalaya')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (22, N'Mizoram')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (23, N'Nagaland')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (24, N'Orissa')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (25, N'Puducherry')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (26, N'Punjab')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (27, N'Rajasthan')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (28, N'Tamil Nadu')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (29, N'Tripura')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (30, N'Uttar Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (31, N'Uttrakhand')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (32, N'West Bengal')
SET IDENTITY_INSERT [dbo].[States] OFF
/****** Object:  StoredProcedure [dbo].[UpdateTravelMiles]    Script Date: 07/29/2013 09:48:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Amloorp Anand>
-- Create date: <26th April, 2013>
-- Description:	<SP to add travel miles>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateTravelMiles] 
	-- Add the parameters for the stored procedure here
	@username nvarchar(256),
	@travelmiles int,
	@bookingrefno nvarchar(256)
AS
BEGIN
	DECLARE @ROWCOUNT int
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT @ROWCOUNT = COUNT(*) FROM travel_miles where username = @username
	
	IF (@ROWCOUNT = 0)
	BEGIN
		-- Insert the row for the new user
		INSERT INTO travel_miles values (@username, @travelmiles)
		INSERT INTO booking_miles VALUES(@username, @bookingrefno, @travelmiles)
	END
	ELSE
	BEGIN
		-- Update the travel miles for the user
		UPDATE travel_miles SET travelmiles = travelmiles + @travelmiles 
		WHERE username = @username
		INSERT INTO booking_miles VALUES(@username, @bookingrefno, @travelmiles)
	END
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[travel_miles_redemption]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[travel_miles_redemption](
	[travelmileredemptionid] [int] IDENTITY(1,1) NOT NULL,
	[travelmileid] [int] NOT NULL,
	[redemptiondate] [datetime] NOT NULL,
	[points_redeemed] [int] NOT NULL,
 CONSTRAINT [PK_travel_miles_redemption] PRIMARY KEY CLUSTERED 
(
	[travelmileredemptionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetTravelClass]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTravelClass] 
AS
BEGIN
	SELECT cl.ClassId,cl.ClassType from Classes cl
END
GO
/****** Object:  StoredProcedure [dbo].[GetStates]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStates]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from States
END
GO
/****** Object:  StoredProcedure [dbo].[GetTravelMilesForUser]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Amloorp Anand
-- Create date: 26th April, 2013
-- Description:	Stored Proc to get the travel miles for a user
-- =============================================
CREATE PROCEDURE [dbo].[GetTravelMilesForUser] 
	-- Add the parameters for the stored procedure here
	@username nvarchar(256)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT travelmiles FROM travel_miles WHERE username = @username
END
GO
/****** Object:  StoredProcedure [dbo].[GetAirLines]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jagdeep>
-- Create date: <Create Date,,08-feb-2013>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAirLines]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from dbo.Airlines
END
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights](
	[FlightId] [bigint] IDENTITY(1,1) NOT NULL,
	[AirlineId] [int] NOT NULL,
	[FlightName] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_Flights] PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Flights__22AA2996] UNIQUE NONCLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Flights] ON
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (9, 2, N'Air India - AI-101')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (10, 3, N'Air India Sahara - AIS-101')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (11, 4, N'GO AIR - GA101')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (12, 5, N'IndiGo-IG-102')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (13, 7, N'JW-102')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (14, 6, N'KF-102')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (15, 8, N'SJ-102')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (16, 11, N'JABlr')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (17, 11, N'JADel')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (18, 11, N'JAMys')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (19, 11, N'JABlr-01')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (20, 11, N'JA001')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (21, 12, N'Srinu Flight')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (22, 12, N'Srinu Flight1')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (23, 2, N'testsrinu')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (24, 14, N'1Uno')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (25, 2, N'AI-305')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (26, 2, N'AI-405')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (27, 2, N'AI-306')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (28, 2, N'AI-506')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (29, 15, N'1Uno')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (30, 27, N'121-1')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (31, 16, N'BS-India-001')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (32, 21, N'Flight1')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (33, 21, N'Flight1++')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (34, 7, N'Flight One')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (35, 22, N'Sout jet')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (36, 27, N'AirAsia_A001')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (37, 17, N'Flight007')
SET IDENTITY_INSERT [dbo].[Flights] OFF
/****** Object:  StoredProcedure [dbo].[GetRoomTypes]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Mar 20th 2013>
-- Description:	<Procedure to get the types of room>
-- =============================================
CREATE PROCEDURE [dbo].[GetRoomTypes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Select statements for procedure here
	SELECT
		RoomTypes.TypeId, RoomTypes.Title, RoomTypes.Description, RoomTypes.Code, RoomTypes.IsActive
	FROM
		RoomTypes
	ORDER BY
		RoomTypes.Title	
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetHappyMilesForBookingReference]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Amloorp Anand
-- Create date: 28th April, 2013
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetHappyMilesForBookingReference] 
	-- Add the parameters for the stored procedure here
	@bookingrefno nvarchar(256)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT happymiles FROM booking_miles WHERE bookingrefno = @bookingrefno
END
GO
/****** Object:  StoredProcedure [dbo].[DeductHappyMilesForCancellation]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Amloorp Anand
-- Create date: 28th April, 2013
-- Description:	SP to deduct the happy miles 
-- when the ticket is cancelled
-- =============================================
CREATE PROCEDURE [dbo].[DeductHappyMilesForCancellation]
	-- Add the parameters for the stored procedure here
	@bookingrefno nvarchar(256),
	@username nvarchar(256)
AS
BEGIN
	DECLARE @happyMiles int
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT @happyMiles = happymiles from booking_miles where bookingrefno = @bookingrefno
		and username = @username
		
	DELETE FROM booking_miles WHERE bookingrefno = @bookingrefno
		and username = @username
		
	UPDATE travel_miles SET travelmiles = travelmiles - @happyMiles WHERE username = @username
   
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Pa__PathI__41EDCAC5]  DEFAULT (newid()),
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__aspnet_Paths__35BCFE0A] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
	[StateId] [bigint] NOT NULL,
 CONSTRAINT [pk_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Cities__33D4B598] UNIQUE NONCLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (2, N'Car Nicobar', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (3, N'Port Blair', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (4, N'Kadapa', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (5, N'Rajahmundry', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (6, N'Hyderabad', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (7, N'Puttaparthi', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (8, N'Tirupati', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (9, N'Vijayawada', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (10, N'Visakhapatnam', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (11, N'Warangal', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (12, N'Alongg', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (13, N'Daporijo', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (14, N'Pasighat', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (15, N'Tezu', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (16, N'Ziro', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (17, N'Dibrugarh', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (18, N'Jorhat', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (19, N'North Lakhimpur', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (20, N'Guwahati', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (21, N'Dhubri', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (22, N'Silchar', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (23, N'Tezpur', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (24, N'Gaya', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (25, N'Patna', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (26, N'Muzzafarpur', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (27, N'Bilaspur', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (28, N'Jagdalpur', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (29, N'Raipur', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (30, N'Daman', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (31, N'Diu', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (32, N'New Delhi', 8)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (33, N'Whole state', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (34, N'Bhavnagar', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (35, N'Bhuj', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (36, N'Jamnagar', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (37, N'Kandla', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (38, N'Keshod', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (39, N'Mehsana', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (40, N'Palanpur', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (41, N'Porbandar', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (42, N'Rajkot', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (44, N'Ahmedabad', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (45, N'Surat', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (46, N'Vadodara', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (47, N'Hisar', 11)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (48, N'Kullu', 12)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (49, N'Kangra', 12)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (50, N'Shimla', 12)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (51, N'Jammu', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (52, N'Kargil', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (53, N'Leh', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (54, N'Srinagar', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (55, N'Ranchi', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (56, N'Jamshedpur', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (57, N'Belgaum', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (58, N'Bellary', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (59, N'Bengaluru', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (60, N'Hassan', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (61, N'Hubli', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (62, N'Mangalore', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (63, N'Mysore', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (64, N'Toranagallu', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (65, N'Kozhikode', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (66, N'Kochi', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (67, N'Thiruvananthapuram', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (68, N'Agatti', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (69, N'Indore', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (70, N'Gwalior', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (71, N'Jabalpur', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (72, N'Khajuraho', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (73, N'Bhopal', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (74, N'Akola', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (75, N'Aurangabad', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (76, N'Mumbai', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (77, N'Nagpur', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (78, N'Nashik', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (79, N'Kolhapur', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (80, N'Latur', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (81, N'Nanded', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (82, N'Osmanabad', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (83, N'Pune', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (84, N'Ratnagiri', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (85, N'Solapu', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (86, N'Yavatmal', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (87, N'Imphal', 20)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (88, N'Shillong', 21)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (89, N'Aizawl', 22)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (90, N'Dimapur', 23)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (91, N'Brahmapur', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (92, N'Bhubaneswar', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (93, N'Jeypore', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (94, N'Jharsuguda', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (95, N'Rourkela', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (96, N'Pondicherry', 25)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (97, N'Bathinda', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (98, N'Ludhiana', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (99, N'Pathankot', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (100, N'Ludhiana', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (101, N'Amritsar', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (102, N'Bikaner', 27)
GO
print 'Processed 100 total records'
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (103, N'Jaipur', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (104, N'Jodhpur', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (105, N'Kota', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (106, N'Udaipur', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (107, N'Chennai', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (108, N'Coimbatore', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (109, N'Madurai', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (110, N'Salem', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (111, N'Thanjavur', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (112, N'Tiruchirapalli', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (113, N'Tuticorin', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (114, N'Agarth', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (115, N'Kailashahar', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (116, N'Agra', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (117, N'Allahabad', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (118, N'Lucknow', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (119, N'Gorakhpur', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (120, N'Kanpur', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (121, N'Varansi', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (122, N'Dehradun', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (123, N'Pantnagar', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (124, N'Siliguri', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (125, N'Balurghat', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (126, N'Cooch Behar', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (127, N'Malda', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (128, N'Myrore', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (129, N'Trichy', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (130, N'Hasanpur', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (131, N'Srinucity', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (132, N'Srinucityone', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (133, N'Mysore', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (134, N'None', 8)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (135, N'Nonee', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (136, N'Bombay', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (137, N'Hospet', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (138, N'Hampi', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (139, N'zzz', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (140, N'chennai', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (141, N'bengaluru', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (142, N'Bengaluru', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (143, N'JPNagar', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (144, N'CityOne', 1)
SET IDENTITY_INSERT [dbo].[Cities] OFF
/****** Object:  Table [dbo].[Bookings]    Script Date: 07/29/2013 09:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[BookingDate] [datetime] NOT NULL CONSTRAINT [DF__Bookings__Bookin__1BC821DD]  DEFAULT (getdate()),
	[BookingReferenceNo] [nvarchar](100) NULL,
	[Remarks] [nvarchar](200) NOT NULL,
	[TotalCost] [decimal](18, 2) NOT NULL,
	[IsCanceled] [bit] NOT NULL CONSTRAINT [DF__Bookings__IsCanc__1CBC4616]  DEFAULT ((0)),
 CONSTRAINT [pk_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Bookings__73951AEC19DFD96B] UNIQUE NONCLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Bookings__8D59A23F17036CC0] UNIQUE NONCLUSTERED 
(
	[BookingReferenceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (20, 1, CAST(0x0000A1BA001A46B9 AS DateTime), N'HTRP20', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (21, 1, CAST(0x0000A1BA002458A8 AS DateTime), N'HTRP21', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (22, 1, CAST(0x0000A1BB00666AEF AS DateTime), N'HTRP22', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (23, 1, CAST(0x0000A1BB00681A70 AS DateTime), N'HTRP23', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (24, 1, CAST(0x0000A1BB00688149 AS DateTime), N'HTRP24', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (25, 1, CAST(0x0000A1BB006A590F AS DateTime), N'HTRP25', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (26, 1, CAST(0x0000A1BB006ABDF8 AS DateTime), N'HTRP26', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (27, 1, CAST(0x0000A1BB006C66B1 AS DateTime), N'HTRP27', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (28, 1, CAST(0x0000A1BB00B941B9 AS DateTime), N'HTRP28', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (29, 1, CAST(0x0000A1BC0015482E AS DateTime), N'HTRP29', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (30, 1, CAST(0x0000A1BC006E8C41 AS DateTime), N'HTRP30', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (31, 1, CAST(0x0000A1BC0072C2E7 AS DateTime), N'HTRP31', N'Booking Air Ticket', CAST(5500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (32, 1, CAST(0x0000A1BC0072EF3E AS DateTime), N'HTRP32', N'Booking Air Ticket', CAST(5200.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (33, 1, CAST(0x0000A1BC00748851 AS DateTime), N'HTRP33', N'Booking Air Ticket', CAST(5200.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (34, 1, CAST(0x0000A1BC007585C6 AS DateTime), N'HTRP34', N'Booking Air Ticket', CAST(6400.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (35, 1, CAST(0x0000A1BC00788F26 AS DateTime), N'HTRP35', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (36, 1, CAST(0x0000A1BC00796673 AS DateTime), N'HTRP36', N'Booking Air Ticket', CAST(5200.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (37, 1, CAST(0x0000A1BC007B59CE AS DateTime), N'HTRP37', N'Booking Air Ticket', CAST(6400.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (38, 1, CAST(0x0000A1BC007D7A7F AS DateTime), N'HTRP38', N'Booking Air Ticket', CAST(7800.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (39, 1, CAST(0x0000A1BC007E1AEB AS DateTime), N'HTRP39', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (40, 1, CAST(0x0000A1BC007F7AEA AS DateTime), N'HTRP40', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (41, 1, CAST(0x0000A1BC0083B465 AS DateTime), N'HTRP41', N'Booking Air Ticket', CAST(5200.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (42, 1, CAST(0x0000A1BC00890A7A AS DateTime), N'HTRP42', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (43, 1, CAST(0x0000A1BC0089B396 AS DateTime), N'HTRP43', N'Booking Air Ticket', CAST(7800.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (44, 1, CAST(0x0000A1BC008B14B2 AS DateTime), N'HTRP44', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (45, 1, CAST(0x0000A1BC008C5F19 AS DateTime), N'HTRP45', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (46, 1, CAST(0x0000A1BC008D8484 AS DateTime), N'HTRP46', N'Booking Air Ticket', CAST(5200.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (47, 1, CAST(0x0000A1BC008EF17E AS DateTime), N'HTRP47', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (48, 1, CAST(0x0000A1BC0090214E AS DateTime), N'HTRP48', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (49, 1, CAST(0x0000A1BC00909EBF AS DateTime), N'HTRP49', N'Booking Air Ticket', CAST(5200.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (50, 1, CAST(0x0000A1BC00940163 AS DateTime), N'HTRP50', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (51, 1, CAST(0x0000A1BC00940164 AS DateTime), N'HTRP51', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (52, 1, CAST(0x0000A1BC009F3D8F AS DateTime), N'HTRP52', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (53, 1, CAST(0x0000A1BC009FF5A5 AS DateTime), N'HTRP53', N'Booking Air Ticket', CAST(5200.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (54, 1, CAST(0x0000A1BC00A18162 AS DateTime), N'HTRP54', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (55, 1, CAST(0x0000A1BC00AF9569 AS DateTime), N'HTRP55', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (56, 1, CAST(0x0000A1BC00B0E0C5 AS DateTime), N'HTRP56', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (57, 1, CAST(0x0000A1BC00B1A2F3 AS DateTime), N'HTRP57', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (58, 1, CAST(0x0000A1BC00B35C10 AS DateTime), N'HTRP58', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (59, 1, CAST(0x0000A1BD0002F198 AS DateTime), N'HTRP59', N'Booking Air Ticket', CAST(370.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (60, 1, CAST(0x0000A1BD0006303E AS DateTime), N'HTRP60', N'Booking Air Ticket', CAST(370.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (61, 1, CAST(0x0000A1BD0007AC07 AS DateTime), N'HTRP61', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (62, 1, CAST(0x0000A1BD00096724 AS DateTime), N'HTRP62', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (63, 1, CAST(0x0000A1BD000CA4B5 AS DateTime), N'HTRP63', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (64, 1, CAST(0x0000A1BD00184868 AS DateTime), N'HTRP64', N'Booking Air Ticket', CAST(5000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (65, 1, CAST(0x0000A1BD001CD2D2 AS DateTime), N'HTRP65', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (66, 1, CAST(0x0000A1BD001E3EC3 AS DateTime), N'HTRP66', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (67, 1, CAST(0x0000A1BD001F13BE AS DateTime), N'HTRP67', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (68, 1, CAST(0x0000A1BD00201E82 AS DateTime), N'HTRP68', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (69, 1, CAST(0x0000A1BD004986CF AS DateTime), N'HTRP69', N'Booking Air Ticket', CAST(1492.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (70, 1, CAST(0x0000A1BD004986D2 AS DateTime), N'HTRP70', N'Booking Air Ticket', CAST(1060.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (71, 1, CAST(0x0000A1BD004BAF4C AS DateTime), N'HTRP71', N'Booking Air Ticket', CAST(7092.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (72, 1, CAST(0x0000A1BD004BAF4D AS DateTime), N'HTRP72', N'Booking Air Ticket', CAST(1590.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (73, 1, CAST(0x0000A1BD005043E1 AS DateTime), N'HTRP73', N'Booking Air Ticket', CAST(10000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (74, 1, CAST(0x0000A1BD005939A7 AS DateTime), N'HTRP74', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (75, 1, CAST(0x0000A1BD008F6F13 AS DateTime), N'HTRP75', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (76, 1, CAST(0x0000A1BD00A3F37E AS DateTime), N'HTRP76', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (77, 1, CAST(0x0000A1BD00C826CC AS DateTime), N'HTRP77', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (78, 1, CAST(0x0000A1BD00C827B1 AS DateTime), N'HTRP78', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (79, 1, CAST(0x0000A1BE008A2F37 AS DateTime), N'HTRP79', N'Booking Air Ticket', CAST(4600.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (80, 1, CAST(0x0000A1BE008C1585 AS DateTime), N'HTRP80', N'Booking Air Ticket', CAST(18000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (81, 1, CAST(0x0000A1BF00201319 AS DateTime), N'HTRP81', N'Booking Air Ticket', CAST(3200.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (82, 1, CAST(0x0000A1BF00217D89 AS DateTime), N'HTRP82', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (83, 1, CAST(0x0000A1BF00288672 AS DateTime), N'HTRP83', N'Booking Air Ticket', CAST(240.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (84, 1, CAST(0x0000A1BF004863F0 AS DateTime), N'HTRP84', N'Booking Air Ticket', CAST(1800.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (85, 1, CAST(0x0000A1BF00B17F1C AS DateTime), N'HTRP85', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (86, 1, CAST(0x0000A1BF00BEA7AE AS DateTime), N'HTRP86', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (87, 1, CAST(0x0000A1BF00C095BE AS DateTime), N'HTRP87', N'Booking Air Ticket', CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (88, 1, CAST(0x0000A1BF00C095BF AS DateTime), N'HTRP88', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (89, 1, CAST(0x0000A1C100783346 AS DateTime), N'HTRP89', N'Booking Air Ticket', CAST(2645.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (90, 1, CAST(0x0000A1C1007A7273 AS DateTime), N'HTRP90', N'Booking Air Ticket', CAST(3900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (91, 1, CAST(0x0000A1C20009D9DE AS DateTime), N'HTRP91', N'Booking Air Ticket', CAST(3680.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (92, 1, CAST(0x0000A1C30038D79E AS DateTime), N'HTRP92', N'Booking Air Ticket', CAST(3450.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (93, 1, CAST(0x0000A1C30038D7A4 AS DateTime), N'HTRP93', N'Booking Air Ticket', CAST(2645.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (94, 1, CAST(0x0000A1C3003A96B2 AS DateTime), N'HTRP94', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (95, 1, CAST(0x0000A1C3003A96B3 AS DateTime), N'HTRP95', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (96, 1, CAST(0x0000A1C300734439 AS DateTime), N'HTRP96', N'Booking Air Ticket', CAST(5001.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (97, 1, CAST(0x0000A1C300785BDD AS DateTime), N'HTRP97', N'Booking Air Ticket', CAST(2300.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (98, 1, CAST(0x0000A1C30087B3F0 AS DateTime), N'HTRP98', N'Booking Air Ticket', CAST(1250.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (99, 1, CAST(0x0000A1C30088E216 AS DateTime), N'HTRP99', N'Booking Air Ticket', CAST(3750.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (100, 1, CAST(0x0000A1C3008AD357 AS DateTime), N'HTRP100', N'Booking Air Ticket', CAST(1250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (101, 1, CAST(0x0000A1C300B4169D AS DateTime), N'HTRP101', N'Booking Air Ticket', CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (102, 1, CAST(0x0000A1C300B946DD AS DateTime), N'HTRP102', N'Booking Air Ticket', CAST(5501.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (103, 1, CAST(0x0000A1C300BA64E9 AS DateTime), N'HTRP103', N'Booking Air Ticket', CAST(5001.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (104, 1, CAST(0x0000A1C300C2D816 AS DateTime), N'HTRP104', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (105, 1, CAST(0x0000A1C300C33FF6 AS DateTime), N'HTRP105', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (106, 1, CAST(0x0000A1C300C38AA7 AS DateTime), N'HTRP106', N'Booking Air Ticket', CAST(3451.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (107, 1, CAST(0x0000A1DC009DE1A6 AS DateTime), N'HTRP107', N'Booking Air Ticket', CAST(3000.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[Bookings] OFF
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Us__UserI__3D2915A8]  DEFAULT (newid()),
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL CONSTRAINT [DF__aspnet_Us__Mobil__3E1D39E1]  DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL CONSTRAINT [DF__aspnet_Us__IsAno__3F115E1A]  DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Users__29572725] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'6c0a8c36-2c7f-4ce4-8a3e-45c8840226ab', N'admin', N'admin', NULL, 0, CAST(0x0000A1C301290F32 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'e08dddf1-79d0-457d-b460-94093028f199', N'anand@pratian.com', N'anand@pratian.com', NULL, 0, CAST(0x0000A1C10102A254 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'b2044c78-f398-49bf-979e-7f64dd5be02d', N'janakiram.gs@pratian.com', N'janakiram.gs@pratian.com', NULL, 0, CAST(0x0000A1D8007D0E40 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'9b3141ff-07ad-440e-bd48-54420c58b744', N'kk@gmail.com', N'kk@gmail.com', NULL, 0, CAST(0x0000A1C00050000A AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'kk@pratian.com', N'kk@pratian.com', NULL, 0, CAST(0x0000A1E501049D90 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'57ff1357-47be-4b4c-8f66-4e05d2276bcd', N'kk2@pratian.com', N'kk2@pratian.com', NULL, 0, CAST(0x0000A1AE016B75D5 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'KrishnafromPratian6', N'krishnafrompratian6', NULL, 0, CAST(0x0000A15100E029C5 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'2909d39c-d01f-4410-8611-7ac7bf4f3a31', N'manj_ks@yahoo.co.in', N'manj_ks@yahoo.co.in', NULL, 0, CAST(0x0000A1C300A59895 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'a72f0a5b-4d11-451a-841d-3453faa00062', N'pavan@pratian.com', N'pavan@pratian.com', NULL, 0, CAST(0x0000A1B800FAB181 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'fa847ed9-0fc4-4b21-ac04-3b4c3dee054f', N'pri@gmail.com', N'pri@gmail.com', NULL, 0, CAST(0x0000A1C2008DB58B AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'8de73d65-ab97-4b66-8a7e-0a22d79df48e', N'shash@gmail.com', N'shash@gmail.com', NULL, 0, CAST(0x0000A1C301350A35 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45', N'shashank@gmail.com', N'shashank@gmail.com', NULL, 0, CAST(0x0000A1C301370DA7 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'2f5c9bf2-3cdf-4803-92b4-ddeb95530b68', N'srikanthreddy@mail.com', N'srikanthreddy@mail.com', NULL, 0, CAST(0x0000A1BD014673D4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142', N'srinu@pratian.com', N'srinu@pratian.com', NULL, 0, CAST(0x0000A1BC00F2D63C AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'23eebc3f-ac79-499b-8577-3cf75da45e67', N'thavamuni@gmail.com', N'thavamuni@gmail.com', NULL, 0, CAST(0x0000A1BF0139635B AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd', N'vk@pratian.com', N'vk@pratian.com', NULL, 0, CAST(0x0000A1BF00BBC004 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Ro__RoleI__42E1EEFE]  DEFAULT (newid()),
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_Roles__38996AB5] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'e2237fb9-6042-48cf-a3fa-0617eac67de8', N'Administrator', N'administrator', N'One who manages the portal')
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'9e02b97c-dba2-4e48-860b-95e604ff64ec', N'TravelUser', N'traveluser', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[BookingPayments]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingPayments](
	[BookingId] [bigint] NOT NULL,
	[PaymentDate] [datetime] NOT NULL CONSTRAINT [DF__BookingPa__Payme__45BE5BA9]  DEFAULT (getdate()),
	[PaymentAmount] [float] NOT NULL,
	[ReferenceNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_BookingPayments] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (20, CAST(0x0000A1BA001A46BA AS DateTime), 3000, N'854e3403-5b31-48f5-b382-aa8ef0cabfd3')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (21, CAST(0x0000A1BA002458A9 AS DateTime), 3000, N'd85a3107-46ac-4046-9f4d-d1552af4c227')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (22, CAST(0x0000A1BB00666AEF AS DateTime), 3000, N'444c0f65-e7cd-405a-af3d-0e8139cbba4a')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (23, CAST(0x0000A1BB00681A71 AS DateTime), 3000, N'991a4657-0c3d-4bf9-9ec3-36a8fdc1434c')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (24, CAST(0x0000A1BB0068814A AS DateTime), 3000, N'9979313a-e115-4945-9fa1-952e87b4adfe')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (25, CAST(0x0000A1BB006A590F AS DateTime), 3000, N'eb03be9c-176f-4948-ab0b-99e869b3de37')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (26, CAST(0x0000A1BB006ABDF8 AS DateTime), 3000, N'7ef091fc-89f8-4066-b62b-43edf8294f85')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (27, CAST(0x0000A1BB006C66B2 AS DateTime), 3000, N'b6addc2d-cb8a-46cc-a925-a5c806095f13')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (28, CAST(0x0000A1BB00B941B9 AS DateTime), 2000, N'3c5d970e-4ecd-4172-9514-9f22074a91d9')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (29, CAST(0x0000A1BC0015482E AS DateTime), 2000, N'18aaeef4-1e8d-497e-901c-e479f771e50e')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (30, CAST(0x0000A1BC006E8C41 AS DateTime), 2300, N'58232100-0e63-4757-8461-28362ff25d79')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (31, CAST(0x0000A1BC0072C2E7 AS DateTime), 5500, N'e5b1c023-23dc-4d38-af04-97829afd902f')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (32, CAST(0x0000A1BC0072EF3E AS DateTime), 5200, N'd14b9253-387a-44cc-8194-2e177929080a')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (33, CAST(0x0000A1BC00748851 AS DateTime), 5200, N'ee1919a5-ff7f-472f-a7ba-b843b8c9fb7a')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (34, CAST(0x0000A1BC007585C6 AS DateTime), 6400, N'c243224b-da02-42d5-8f6e-258859324bf4')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (35, CAST(0x0000A1BC00788F26 AS DateTime), 2000, N'bbe1decb-613c-4318-9e47-d022a906f4e7')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (36, CAST(0x0000A1BC00796673 AS DateTime), 5200, N'dcf232ed-cec5-4d91-b2eb-c98e5f6198af')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (37, CAST(0x0000A1BC007B59CE AS DateTime), 6400, N'49962664-100f-4e41-86a3-5f1344d3a651')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (38, CAST(0x0000A1BC007D7A7F AS DateTime), 7800, N'8dca43be-1972-4fea-b5ad-b975566bc000')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (39, CAST(0x0000A1BC007E1AEB AS DateTime), 2300, N'5f2a1095-108e-4237-a515-638541e32d09')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (40, CAST(0x0000A1BC007F7AEA AS DateTime), 2300, N'b930afe1-b5d5-4bd2-bf51-8ce1f6055ba2')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (41, CAST(0x0000A1BC0083B465 AS DateTime), 5200, N'8ca28de4-c5be-41c9-97a3-fad0eb591c49')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (42, CAST(0x0000A1BC00890A7B AS DateTime), 4600, N'a09d6087-2193-435c-9c55-9bd6b83bc949')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (43, CAST(0x0000A1BC0089B396 AS DateTime), 7800, N'd996d34a-9e80-46de-9dab-0a33111f22e5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (44, CAST(0x0000A1BC008B14B2 AS DateTime), 4600, N'c49573e4-fbc1-4804-9931-208d4c8ddcaa')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (45, CAST(0x0000A1BC008C5F19 AS DateTime), 4600, N'583780d4-f048-4bf0-85bc-9c37a39754bf')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (46, CAST(0x0000A1BC008D8484 AS DateTime), 5200, N'6cc437ba-9510-4797-a78f-5b1292776ca5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (47, CAST(0x0000A1BC008EF17E AS DateTime), 4600, N'a145050b-963d-4df3-9860-e6fdd0b01131')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (48, CAST(0x0000A1BC0090214E AS DateTime), 4600, N'6e1df10a-e989-4c15-9b94-7884dbe22384')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (49, CAST(0x0000A1BC00909EBF AS DateTime), 5200, N'c6f9a56b-501f-43f1-a392-46600194ca87')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (50, CAST(0x0000A1BC00940163 AS DateTime), 2300, N'a4bcd380-4a44-463f-a563-1da209780182')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (51, CAST(0x0000A1BC00940164 AS DateTime), 3450, N'a4bcd380-4a44-463f-a563-1da209780182')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (52, CAST(0x0000A1BC009F3D8F AS DateTime), 4600, N'0afeb552-6a46-4510-b2f6-724df2dc2444')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (53, CAST(0x0000A1BC009FF5A5 AS DateTime), 5200, N'349a5269-93da-419f-907e-50709d508486')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (54, CAST(0x0000A1BC00A18162 AS DateTime), 4600, N'bf1f4b76-2791-49c0-9ef1-bd77dab1effa')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (55, CAST(0x0000A1BC00AF956A AS DateTime), 3450, N'df35ac10-64a2-4090-bcb1-7c0db855270d')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (56, CAST(0x0000A1BC00B0E0C5 AS DateTime), 3000, N'538e106b-f547-4e3a-b832-5d71751603f1')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (57, CAST(0x0000A1BC00B1A2F3 AS DateTime), 3450, N'779057c2-9c45-46fe-a254-6c88041d6bb5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (58, CAST(0x0000A1BC00B35C11 AS DateTime), 3450, N'08915fe9-f3ce-440f-9a76-adbaee57175d')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (59, CAST(0x0000A1BD0002F199 AS DateTime), 370, N'b2c3eef0-6c41-4d1f-a4e7-8ce38943e915')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (60, CAST(0x0000A1BD0006303E AS DateTime), 370, N'f42292f8-ee39-4d80-a7d6-70b89a66a6b5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (61, CAST(0x0000A1BD0007AC08 AS DateTime), 3450, N'8287f611-bef6-4d2a-a32c-3317aab9999f')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (62, CAST(0x0000A1BD00096724 AS DateTime), 2300, N'90ab1483-6ffd-4845-a87b-2457285782e0')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (63, CAST(0x0000A1BD000CA4B6 AS DateTime), 3450, N'0f6c3bb2-c784-4090-bf41-c5c400f48755')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (64, CAST(0x0000A1BD00184868 AS DateTime), 5000, N'7977df6f-06f1-48f2-933f-dae1a8db5555')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (65, CAST(0x0000A1BD001CD2D2 AS DateTime), 2000, N'25298e2a-3ef2-4612-a23a-f1d8f50f2f9b')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (66, CAST(0x0000A1BD001E3EC3 AS DateTime), 2000, N'cda45b92-abfb-41ad-81ae-8055ba2003d5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (67, CAST(0x0000A1BD001F13BE AS DateTime), 2000, N'20df93a8-cdc3-449a-818d-176ea7524d73')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (68, CAST(0x0000A1BD00201E82 AS DateTime), 3000, N'00127272-f0e5-43f7-a59a-8ef3db39e43a')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (69, CAST(0x0000A1BD004986CF AS DateTime), 1492, N'4b101c73-55bd-4de9-a8b0-c2b8796cd65c')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (70, CAST(0x0000A1BD004986D2 AS DateTime), 1060, N'4b101c73-55bd-4de9-a8b0-c2b8796cd65c')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (71, CAST(0x0000A1BD004BAF4C AS DateTime), 7092, N'b9b1b99b-564b-4bf3-8f0e-4ed26b78bc56')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (72, CAST(0x0000A1BD004BAF4D AS DateTime), 1590, N'b9b1b99b-564b-4bf3-8f0e-4ed26b78bc56')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (73, CAST(0x0000A1BD005043E1 AS DateTime), 10000, N'9188ebd7-956c-42dc-a97d-86741e572600')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (74, CAST(0x0000A1BD005939A7 AS DateTime), 2000, N'5d14e185-ae68-4da7-9661-5cabfc514d48')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (75, CAST(0x0000A1BD008F6F14 AS DateTime), 2300, N'87863f4d-4196-4444-b839-96b02799b51e')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (76, CAST(0x0000A1BD00A3F37F AS DateTime), 3000, N'64e096ab-ba44-461b-b196-5966957f4f5f')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (77, CAST(0x0000A1BD00C826CD AS DateTime), 3450, N'a07ac735-c89b-475c-9792-25494a349827')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (78, CAST(0x0000A1BD00C827B1 AS DateTime), 2300, N'a07ac735-c89b-475c-9792-25494a349827')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (79, CAST(0x0000A1BE008A2F37 AS DateTime), 4600, N'04d88e17-802c-4f67-b5bc-ff42017e5ffe')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (80, CAST(0x0000A1BE008C1585 AS DateTime), 18000, N'83543128-9156-4adc-aab1-ac4e24cf7ee5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (81, CAST(0x0000A1BF00201319 AS DateTime), 3200, N'4f3245a8-0891-4ed6-8320-36e9a5996b54')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (82, CAST(0x0000A1BF00217D89 AS DateTime), 2000, N'ba1aa3e5-4e46-412d-bb3b-9bcc3f58a036')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (83, CAST(0x0000A1BF00288672 AS DateTime), 240, N'967c4fe8-dc04-4ce4-88ad-c11dc1b411ef')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (84, CAST(0x0000A1BF004863F0 AS DateTime), 1800, N'2c87354a-2be0-4a31-91bc-e29a96022eaf')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (85, CAST(0x0000A1BF00B17F1C AS DateTime), 2000, N'c357d77b-e9cc-4714-a4da-64543528087c')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (86, CAST(0x0000A1BF00BEA7AE AS DateTime), 3000, N'c94fa4b3-8e2c-44d2-ac26-a4233a8bb8b7')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (87, CAST(0x0000A1BF00C095BF AS DateTime), 2000, N'4c3ffbb1-df4f-4be5-afe7-fa76b872f3d8')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (88, CAST(0x0000A1BF00C095BF AS DateTime), 3000, N'4c3ffbb1-df4f-4be5-afe7-fa76b872f3d8')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (89, CAST(0x0000A1C100783346 AS DateTime), 2645, N'4242ad22-1cab-498e-9b6e-7e82f36a9184')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (90, CAST(0x0000A1C1007A7273 AS DateTime), 3900, N'd8072599-6c6a-4b05-a8a3-d95541bd6919')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (91, CAST(0x0000A1C20009D9DE AS DateTime), 3680, N'5b42766a-2b3e-4128-a2e0-1547b1aafe22')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (92, CAST(0x0000A1C30038D79E AS DateTime), 3450, N'59562bc3-6c83-4fe3-93fc-029c99eec677')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (93, CAST(0x0000A1C30038D7A4 AS DateTime), 2645, N'59562bc3-6c83-4fe3-93fc-029c99eec677')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (94, CAST(0x0000A1C3003A96B2 AS DateTime), 3000, N'92ea217f-bcf1-4792-8522-aaaccbbbc4c5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (95, CAST(0x0000A1C3003A96B3 AS DateTime), 2300, N'92ea217f-bcf1-4792-8522-aaaccbbbc4c5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (96, CAST(0x0000A1C30073443A AS DateTime), 5001, N'90027c3d-b405-4ffb-ab64-124a85c2b49a')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (97, CAST(0x0000A1C300785BDD AS DateTime), 2300, N'9ab18633-14f0-448b-9684-93ec5212e0f1')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (98, CAST(0x0000A1C30087B3F1 AS DateTime), 1250, N'f80b27ee-58af-47db-a9ec-b7d4cf796a07')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (99, CAST(0x0000A1C30088E216 AS DateTime), 3750, N'c868dbb3-eb34-4af7-93d8-f1fa49b014e8')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (100, CAST(0x0000A1C3008AD357 AS DateTime), 1250, N'e2a2bbbb-b02a-4917-80cd-003fa23cacd5')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (101, CAST(0x0000A1C300B4169E AS DateTime), 1000, N'e6217094-f2e8-497a-aece-26c9040ef8ef')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (102, CAST(0x0000A1C300B946DD AS DateTime), 5501, N'8ae1e8bb-9957-4b6c-87fa-e802ac7229b9')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (103, CAST(0x0000A1C300BA64E9 AS DateTime), 5001, N'8715e70c-3a0f-44b4-9d06-4d326e9b9f58')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (104, CAST(0x0000A1C300C2D816 AS DateTime), 3000, N'53fb23ee-b51e-44c9-bbf8-ef249ab6b017')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (105, CAST(0x0000A1C300C33FF7 AS DateTime), 3000, N'2caf6189-25f1-4dcd-8394-305fc68a686c')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (106, CAST(0x0000A1C300C38AA8 AS DateTime), 3451, N'bb74b1d0-bca1-4cdc-b03e-5d5dfd4347fc')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (107, CAST(0x0000A1DC009DE1A9 AS DateTime), 3000, N'e1f01120-8d8e-4a68-b4b7-88d5fdfac0a4')
/****** Object:  Table [dbo].[BookingContacts]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingContacts](
	[BookingContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NOT NULL,
	[ContactName] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[PinCode] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](20) NULL,
 CONSTRAINT [pk_BookingContacts] PRIMARY KEY CLUSTERED 
(
	[BookingContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__BookingC__032D7D4A245D67DE] UNIQUE NONCLUSTERED 
(
	[BookingContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingContacts] ON
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (19, 20, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', NULL, N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (20, 21, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', NULL, N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (21, 22, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', N'000000', N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (22, 23, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', N'000000', N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (23, 24, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', N'000000', N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (24, 25, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', N'000000', N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (25, 26, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', N'000000', N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (26, 27, N'Anand', N'Vijayanagar', N'Bangalore', N'Kar', N'000000', N'anand@anand.com', N'9988776655', N'8877665544')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (27, 28, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (28, 29, N'Anand', N'Vijayanagar', N'Bengaluru', N'Karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (29, 30, N'KK', N'fhhhh', N'Bangalore', N'Karnataka', N'000000', N'ggg@ff,com', N'', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (30, 31, N'Srinu', N'rewrwer', N'werwer', N'werwer', N'000000', N'werwer', N'', N'7889902222')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (31, 32, N'Anand', N'Vijayanagar', N'Bangalore', N'karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (32, 33, N'Anand', N'Vijayanagar', N'Bangalore', N'karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (33, 34, N'Anand', N'Vijayanagar', N'Bangalore', N'karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (34, 35, N'KK', N'fefwe', N'Bangalore', N'Karnataka', N'000000', N'werewrewr', N'', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (35, 36, N'Anand', N'Vijayanagar', N'bangalore', N'Karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (36, 37, N'Anand', N'Vijayanagar', N'bangalore', N'Karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (37, 38, N'Srinu', N'wrwqrewqr', N'wqerwqer', N'wqrwqre', N'000000', N'wqrwqer', N'', N'7889902222')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (38, 39, N'Srinu', N'awwqerqwer', N'wqerwqer', N'wqrewqer', N'000000', N'wqereq', N'', N'7889902222')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (39, 40, N'Srinu', N'sadfsadf', N'sadfsadf', N'safsadf', N'000000', N'safsadf', N'', N'7889902222')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (40, 41, N'Anand', N'Vijayanagar', N'Bangalore', N'Karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (41, 42, N'Anand', N'Vijayanagar', N'Bangalore', N'karnataka', N'000000', N'anand@happtrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (42, 43, N'Anand', N'VNagar', N'Blr', N'Kar', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (43, 44, N'Anand', N'VNagar', N'Blr', N'Kar', N'000000', N'anand@anand.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (44, 45, N'Anand', N'VNagar', N'Blr', N'Kar', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (45, 46, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (46, 47, N'a1', N'asdf', N'asdf', N'asdf', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (47, 48, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (48, 49, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (49, 50, N'adaqdaa', N'dadsadasd', N'adsasdad', N'sddasda', N'000000', N'adasdaasdasd', N'sadasdasda', N'asdasdas')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (50, 51, N'adaqdaa', N'dadsadasd', N'adsasdad', N'sddasda', N'000000', N'adasdaasdasd', N'sadasdasda', N'asdasdas')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (51, 52, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (52, 53, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (53, 54, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (54, 55, N'Anand', N'Vijayanagar', N'Bangalore', N'Karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (55, 56, N'Anand', N'Vijayanagar', N'Bangalore', N'Karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (56, 57, N'Anand', N'Vijayanagar', N'Bangalore', N'Karnataka', N'000000', N'anand@happytrip.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (57, 58, N'Anand', N'Vijayanagar', N'Bangalore', N'Karnataka', N'000000', N'anand@pratian.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (58, 59, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (59, 60, N'Anand', N'VNagar', N'Blr', N'Kar', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (60, 61, N'a1', N'a1', N'a1', N'a1', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (61, 62, N'a1', N'a1', N'a1', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (62, 63, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (63, 64, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (64, 65, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (65, 66, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (66, 67, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (67, 68, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (68, 69, N'KK', N'abcd', N'Bangalore', N'Karnataka', N'000000', N'a@a.com', N'080411078911', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (69, 70, N'KK', N'abcd', N'Bangalore', N'Karnataka', N'000000', N'a@a.com', N'080411078911', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (70, 71, N'KK', N'fff', N'Bangalore', N'Karnataka', N'000000', N'k@gmail.com', N'', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (71, 72, N'KK', N'fff', N'Bangalore', N'Karnataka', N'000000', N'k@gmail.com', N'', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (72, 73, N'KK', N'dd', N'Bangalore', N'Karnataka', N'000000', N'p@gmail.com', N'', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (73, 74, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@v.v', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (74, 75, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (75, 76, N'aa', N'aa', N'aa', N'a', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (76, 77, N'Srikanth Reddy', N'Street 1, Road 12', N'Hyderabad', N'AP', N'000000', N'srikanthreddy@mail.com', N'9876543210', N'1234567898')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (77, 78, N'Srikanth Reddy', N'Street 1, Road 12', N'Hyderabad', N'AP', N'000000', N'srikanthreddy@mail.com', N'9876543210', N'1234567898')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (78, 79, N'Subramanian', N'A9 Rajarajeswari Nivas', N'Bangalore', N'Karnataka', N'000000', N'ss@pratian.com', N'', N'9845064853')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (79, 80, N'KK', N'lkjhjlhl', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (80, 81, N'kiran', N'bangalore', N'Bengaluru', N'Karnataka', N'000000', N'vk@pratian.com', N'', N'2748383423')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (81, 82, N'kiran', N'bangalore', N'Bengaluru', N'Karnataka', N'000000', N'vk@pratian.com', N'', N'2748383423')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (82, 83, N'kiran', N'bangalore', N'Bengaluru', N'Karnataka', N'000000', N'vk@pratian.com', N'', N'2748383423')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (83, 84, N'kiran', N'bangalore', N'Bengaluru', N'Karnataka', N'000000', N'vk@pratian.com', N'', N'2748383423')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (84, 85, N'Janardhan', N'aaa', N'bbb', N'ka', N'000000', N'aaa@bbb.com', N'', N'9999999999')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (85, 86, N'thava alagu', N'aaa', N'bbb', N'ccc', N'000000', N'thavamuni@gmail.com', N'', N'9731595054')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (86, 87, N'thava alagu', N'MG 204, Golden Blossom', N'Bangalore', N'India', N'000000', N'thavamuni@gmail.com', N'', N'9731595054')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (87, 88, N'thava alagu', N'MG 204, Golden Blossom', N'Bangalore', N'India', N'000000', N'thavamuni@gmail.com', N'', N'9731595054')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (88, 89, N'Jane', N'232, WhiteField Towers, WhiteField', N'Bangalore', N'Karnataka', N'000000', N'jane@happytrip.coom', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (89, 90, N'Anand', N'Vijayanagar', N'Bangalore', N'Karnataka', N'000000', N'anand@pratian.com', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (90, 91, N'KK', N'rrr', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'', N'9886709035')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (91, 92, N'KK', N'DSFSFSF', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'9742345662', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (92, 93, N'KK', N'DSFSFSF', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'9742345662', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (93, 94, N'KK', N'DSFSFSF', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'9742345662', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (94, 95, N'KK', N'DSFSFSF', N'Bangalore', N'Karnataka', N'000000', N'kk@pratian.com', N'9742345662', N'9886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (95, 96, N'shashank', N'gfhsjs', N'bengaluru', N'karnataka', N'000000', N'shash@gmail.com', N'', N'9738602548')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (96, 97, N'shashank', N'sgfvhsd', N'delhi', N'delhi', N'000000', N'shash@gmail.com', N'', N'9964582365')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (97, 98, N'shashank', N'gh', N'bengaluru', N'karnataka', N'000000', N'shash@gmail.com', N'08023202653', N'9738602548')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (98, 99, N'shashank', N'hgh', N'bengaluru', N'karnataka', N'000000', N'shash@gmail.com', N'08023202653', N'9738602548')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (99, 100, N'shashank', N'gfghkhj', N'kolar', N'karnataka', N'000000', N'shash@gmail.com', N'', N'9738602548')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (100, 101, N'Shashank', N'cghj', N'kolar', N'karnataka', N'000000', N'shashank@gmail.com', N'', N'9738602542')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (101, 102, N'Shashank', N'fdhghj', N'kolar', N'karnataka', N'000000', N'shashank@gmail.com', N'', N'9845226557')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (102, 103, N'Shashank', N'hfhgfgh', N'kolar', N'karnata', N'000000', N'shashank@gmail.com', N'', N'9765855556')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (103, 104, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (104, 105, N'aa', N'aa', N'aa', N'aa', N'000000', N'a@b.c', N'', N'9988776655')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (105, 106, N'Shashank', N'fhghhg', N'bengaluru', N'karnataka', N'000000', N'shashank@gmail.com', N'08023202653', N'9738602548')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (106, 107, N'Srikanth Reddy', N'Street 1, Road 12', N'Hyderabad', N'AP', N'000000', N'email@me.com', N'9876543210', N'1234567898')
SET IDENTITY_INSERT [dbo].[BookingContacts] OFF
/****** Object:  Table [dbo].[BookingCancelations]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingCancelations](
	[BookingId] [bigint] NOT NULL,
	[CancelationDate] [datetime] NOT NULL CONSTRAINT [DF__BookingCa__Cance__46B27FE2]  DEFAULT (getdate()),
	[RefundAmount] [float] NOT NULL,
 CONSTRAINT [pk_BookingCancelations] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (20, CAST(0x0000A1BA00000000 AS DateTime), 2250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (30, CAST(0x0000A1C100000000 AS DateTime), 1250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (31, CAST(0x0000A1C100000000 AS DateTime), 4250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (35, CAST(0x0000A1BC00000000 AS DateTime), 1250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (50, CAST(0x0000A1BE00000000 AS DateTime), 1250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (78, CAST(0x0000A1C000000000 AS DateTime), 1250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (81, CAST(0x0000A1C000000000 AS DateTime), 1250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (83, CAST(0x0000A1C200000000 AS DateTime), -1260)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (86, CAST(0x0000A1C100000000 AS DateTime), 2250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (90, CAST(0x0000A1C200000000 AS DateTime), 2250)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (96, CAST(0x0000A1C600000000 AS DateTime), 4251)
INSERT [dbo].[BookingCancelations] ([BookingId], [CancelationDate], [RefundAmount]) VALUES (100, CAST(0x0000A1C500000000 AS DateTime), 250)
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_UsersInRo__5535A963] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'6c0a8c36-2c7f-4ce4-8a3e-45c8840226ab', N'e2237fb9-6042-48cf-a3fa-0617eac67de8')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'e2237fb9-6042-48cf-a3fa-0617eac67de8')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8de73d65-ab97-4b66-8a7e-0a22d79df48e', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a72f0a5b-4d11-451a-841d-3453faa00062', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'fa847ed9-0fc4-4b21-ac04-3b4c3dee054f', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'23eebc3f-ac79-499b-8577-3cf75da45e67', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'57ff1357-47be-4b4c-8f66-4e05d2276bcd', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'9b3141ff-07ad-440e-bd48-54420c58b744', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'2909d39c-d01f-4410-8611-7ac7bf4f3a31', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'b2044c78-f398-49bf-979e-7f64dd5be02d', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e08dddf1-79d0-457d-b460-94093028f199', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'2f5c9bf2-3cdf-4803-92b4-ddeb95530b68', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL CONSTRAINT [DF__aspnet_Me__Passw__44CA3770]  DEFAULT ((0)),
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
 CONSTRAINT [PK__aspnet_Membershi__3F466844] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'62KVYHiAOtdefSWuYx2mlKhMe0Y=', 1, N'bOWloVOdIQNgxDdM/7HbQg==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A15100E02734 AS DateTime), CAST(0x0000A15100E02734 AS DateTime), CAST(0x0000A15100E02734 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'62KVYHiAOtdefSWuYx2mlKhMe0Y=', 1, N'bOWloVOdIQNgxDdM/7HbQg==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17500739E0C AS DateTime), CAST(0x0000A1E500C56EBA AS DateTime), CAST(0x0000A1D800913B7A AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'57ff1357-47be-4b4c-8f66-4e05d2276bcd', N'pruNEFnAeQdDdwmgeTp9DRDlqaQ=', 1, N'KUneIt1zIWV30rS3PVmLQw==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1AD00F32FDC AS DateTime), CAST(0x0000A1AD00F34555 AS DateTime), CAST(0x0000A1AD00F32FDC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'a72f0a5b-4d11-451a-841d-3453faa00062', N'Vu2JhVN23z9qKsWxACc1GRiZ0Zc=', 1, N'+JjB6PkkBysfRAKpADlMJg==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1B800F5D78C AS DateTime), CAST(0x0000A1B800FAB181 AS DateTime), CAST(0x0000A1B800F5D78C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'e08dddf1-79d0-457d-b460-94093028f199', N'yxZEig/LbGekX1ORGoLj3n5tnSs=', 1, N'AV9NL4+eAws4x5u8sbfrlA==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1BA007FFFF8 AS DateTime), CAST(0x0000A1C101014021 AS DateTime), CAST(0x0000A1BA007FFFF8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142', N'5gIo2LcMF6OEhPC7uo8rystKpRQ=', 1, N'NdMMy6d2qP6nT86BIq1HbQ==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1BB00E94DC8 AS DateTime), CAST(0x0000A1BC00EEF3E8 AS DateTime), CAST(0x0000A1BC00EF1A47 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'2f5c9bf2-3cdf-4803-92b4-ddeb95530b68', N'BSlWlqZgDF/vzuXijQ0Fto6mzP0=', 1, N'/RdwaxK0s2PLpHg4uZD6RQ==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1BD013ACB80 AS DateTime), CAST(0x0000A1BD013ADA81 AS DateTime), CAST(0x0000A1BD013ACB80 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd', N'4QgjBBKh1XV5F+tfTNsQjcAcbH8=', 1, N'Eryw402rRj9ASHzUudKJEw==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1BF00841548 AS DateTime), CAST(0x0000A1BF00B9F907 AS DateTime), CAST(0x0000A1BF00A44F26 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'23eebc3f-ac79-499b-8577-3cf75da45e67', N'jZkfbl82iuzt5/9eJqgP4UYVIxI=', 1, N'tAoj1hCBc6RUDqOf+TFsaQ==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1BF01317F6C AS DateTime), CAST(0x0000A1BF013190CA AS DateTime), CAST(0x0000A1BF01317F6C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'9b3141ff-07ad-440e-bd48-54420c58b744', N'Au2PuOhHC3oKNdddVbpbOxIfBxk=', 1, N'I6tFRaTL0UAB2oj6g85pZw==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1C0004FFFB0 AS DateTime), CAST(0x0000A1C0004FFFB0 AS DateTime), CAST(0x0000A1C0004FFFB0 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'fa847ed9-0fc4-4b21-ac04-3b4c3dee054f', N'if+rAJ7TKrh6Le48cqvusvhvkhk=', 1, N'GC4RkMlBZvyV3oNdxbLr0w==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1C200802DAC AS DateTime), CAST(0x0000A1C2008D86C3 AS DateTime), CAST(0x0000A1C200802DAC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'2909d39c-d01f-4410-8611-7ac7bf4f3a31', N'FNAs2veof35h/bzP5jdfRSA8VRg=', 1, N'9nk0Fi7jSLyI/LUP+AgTMw==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1C300A32924 AS DateTime), CAST(0x0000A1C300A36E46 AS DateTime), CAST(0x0000A1C300A32924 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45', N'T/LsX73JhbTHVvLx9PglUz2wi7Q=', 1, N'4AchOD1ButAd9ox3w6+nUw==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1C300CD6D10 AS DateTime), CAST(0x0000A1C30135452F AS DateTime), CAST(0x0000A1C300CD6D10 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'8de73d65-ab97-4b66-8a7e-0a22d79df48e', N'37lr7tYJPnZFvOiV0rkKgWsVvMQ=', 1, N'Qe/QR4E0ymg1IiwR0Xv2+w==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1C300CE16FC AS DateTime), CAST(0x0000A1C3013500E3 AS DateTime), CAST(0x0000A1C300CE16FC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'b2044c78-f398-49bf-979e-7f64dd5be02d', N'aafoREu3fJi6kDj3K8Lxs7OLYjE=', 1, N'bOrr+lfDZ6H2AC7sEqWeJw==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A1D8007CDD3C AS DateTime), CAST(0x0000A1D8007CF67B AS DateTime), CAST(0x0000A1D8007CDD3C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'6c0a8c36-2c7f-4ce4-8a3e-45c8840226ab', N'7z7IoXF55pfN242uQO17nG8UGEw=', 1, N'2mLJM2aMuqCejGkS9+khDA==', NULL, N'admin@happytrip.com', N'admin@happytrip.com', NULL, NULL, 1, 0, CAST(0x0000A1BA0098A0A8 AS DateTime), CAST(0x0000A1C30129069A AS DateTime), CAST(0x0000A1BA0098A0A8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 07/29/2013 09:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__3B75D760] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Perso__Id__43D61337]  DEFAULT (newid()),
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__3D5E1FD2] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Profile__5070F446] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'8de73d65-ab97-4b66-8a7e-0a22d79df48e', N'Personal:S:0:269:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>shashank</FullName>
  <Gender>77</Gender>
  <DateOfBirth>1985-05-08T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1C300CE1703 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45', N'Personal:S:0:269:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>Shashank</FullName>
  <Gender>77</Gender>
  <DateOfBirth>2013-05-12T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1C300CD6DF3 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'a72f0a5b-4d11-451a-841d-3453faa00062', N'Personal:S:0:266:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>pavan</FullName>
  <Gender>77</Gender>
  <DateOfBirth>0001-01-01T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1B800F5D8C2 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'fa847ed9-0fc4-4b21-ac04-3b4c3dee054f', N'Personal:S:0:263:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>PG</FullName>
  <Gender>70</Gender>
  <DateOfBirth>2013-05-17T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1C200802E73 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'23eebc3f-ac79-499b-8577-3cf75da45e67', N'Personal:S:0:272:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>thava alagu</FullName>
  <Gender>77</Gender>
  <DateOfBirth>2013-05-01T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1BF01317FA4 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'Personal:S:0:263:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>KK</FullName>
  <Gender>77</Gender>
  <DateOfBirth>0001-01-01T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A15100E029C5 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'57ff1357-47be-4b4c-8f66-4e05d2276bcd', N'Personal:S:0:265:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>KK 2</FullName>
  <Gender>77</Gender>
  <DateOfBirth>2013-04-03T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1AD00F3317F AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'9b3141ff-07ad-440e-bd48-54420c58b744', N'Personal:S:0:276:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>Krishna Kumar S</FullName>
  <Gender>77</Gender>
  <DateOfBirth>2013-05-01T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1C00050000A AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142', N'Personal:S:0:266:Contact:S:266:251:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>Srinu</FullName>
  <Gender>77</Gender>
  <DateOfBirth>2013-05-01T00:00:00</DateOfBirth>
</Personal><?xml version="1.0" encoding="utf-16"?>
<Contact xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Address />
  <City />
  <State />
  <PinCode />
  <MobileNo>7889902222</MobileNo>
</Contact>', 0x, CAST(0x0000A1BB0122C364 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'2909d39c-d01f-4410-8611-7ac7bf4f3a31', N'Personal:S:0:268:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>ksmanju</FullName>
  <Gender>77</Gender>
  <DateOfBirth>1990-10-17T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1C300A32A73 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'b2044c78-f398-49bf-979e-7f64dd5be02d', N'Personal:S:0:270:Contact:S:270:232:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>Janakiram</FullName>
  <Gender>77</Gender>
  <DateOfBirth>1979-11-17T00:00:00</DateOfBirth>
</Personal><?xml version="1.0" encoding="utf-16"?>
<Contact xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Address />
  <City />
  <State />
  <PinCode />
  <MobileNo />
</Contact>', 0x, CAST(0x0000A1D8007D0663 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'e08dddf1-79d0-457d-b460-94093028f199', N'Personal:S:0:266:Contact:S:266:313:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>Anand</FullName>
  <Gender>77</Gender>
  <DateOfBirth>1978-05-25T00:00:00</DateOfBirth>
</Personal><?xml version="1.0" encoding="utf-16"?>
<Contact xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Address>Vijayanagar</Address>
  <City>Bangalore</City>
  <State>Karnataka</State>
  <PinCode>560040</PinCode>
  <MobileNo>9988776655</MobileNo>
</Contact>', 0x, CAST(0x0000A1BC01265D27 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd', N'Personal:S:0:266:Contact:S:266:311:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>kiran</FullName>
  <Gender>77</Gender>
  <DateOfBirth>2013-05-01T00:00:00</DateOfBirth>
</Personal><?xml version="1.0" encoding="utf-16"?>
<Contact xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Address>bangalore</Address>
  <City>Bengaluru</City>
  <State>Karnataka</State>
  <PinCode>560099</PinCode>
  <MobileNo>2748383423</MobileNo>
</Contact>', 0x, CAST(0x0000A1BF0091FFFE AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'2f5c9bf2-3cdf-4803-92b4-ddeb95530b68', N'Personal:S:0:275:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>Srikanth Reddy</FullName>
  <Gender>77</Gender>
  <DateOfBirth>1994-05-02T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1BD013ACD94 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'Personal:S:0:263:Contact:S:263:294:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>KK</FullName>
  <Gender>77</Gender>
  <DateOfBirth>2001-03-14T00:00:00</DateOfBirth>
</Personal><?xml version="1.0" encoding="utf-16"?>
<Contact xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Address />
  <City>Bangalore</City>
  <State>Karnataka</State>
  <PinCode>560068</PinCode>
  <MobileNo>9886709024</MobileNo>
</Contact>', 0x, CAST(0x0000A1DC01117F21 AS DateTime))
/****** Object:  Table [dbo].[FlightClasses]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightClasses](
	[FlightId] [bigint] NOT NULL,
	[ClassId] [int] NOT NULL,
	[NoOfSeats] [int] NOT NULL,
 CONSTRAINT [pk_FlightClasses] PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (9, 1, 60)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (9, 2, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (10, 1, 60)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (10, 2, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (11, 1, 60)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (11, 2, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (12, 1, 60)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (12, 2, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (13, 1, 60)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (13, 2, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (14, 1, 60)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (14, 2, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (15, 1, 60)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (15, 2, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (16, 1, 10)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (16, 2, 5)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (17, 1, 999999999)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (17, 2, 10)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (18, 1, 999999999)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (18, 2, 99)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (19, 1, 99999999)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (19, 2, 99)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (20, 1, 999999999)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (20, 2, 999999999)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (21, 1, 50)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (23, 1, 1000)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (23, 2, 1000)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (24, 1, 900000)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (25, 1, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (25, 2, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (26, 1, 5)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (26, 2, 5)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (27, 1, 500)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (27, 2, 100)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (28, 1, 200)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (28, 2, 50)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (29, 1, 150)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (29, 2, 25)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (30, 1, 9125)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (30, 2, 15000)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (31, 1, 200)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (31, 2, 50)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (32, 1, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (32, 2, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (33, 1, 20)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (33, 2, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (34, 1, 200)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (34, 2, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (35, 1, 150)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (35, 2, 40)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (36, 1, 100)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (36, 2, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (37, 1, 95)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (37, 2, 26)
/****** Object:  Table [dbo].[FlightBookings]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightBookings](
	[BookingId] [bigint] NOT NULL,
	[DateOfJourney] [datetime] NOT NULL,
	[NoOfSeats] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [pk_FlightBookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (20, CAST(0x0000A1BA00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (21, CAST(0x0000A1BA00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (22, CAST(0x0000A1BC00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (23, CAST(0x0000A1BC00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (24, CAST(0x0000A1BD00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (25, CAST(0x0000A1BF00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (26, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (27, CAST(0x0000A1BC00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (28, CAST(0x0000A1C800000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (29, CAST(0x0000A1BC00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (30, CAST(0x0000A1C100000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (31, CAST(0x0000A1C100000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (32, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (33, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (34, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (35, CAST(0x0000A1BC00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (36, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (37, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (38, CAST(0x0000A1BC00000000 AS DateTime), 3, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (39, CAST(0x0000A1BC00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (40, CAST(0x0000A1BC00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (41, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (42, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (43, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (44, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (45, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (46, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (47, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (48, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (49, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (50, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (51, CAST(0x0000A1BF00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (52, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (53, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (54, CAST(0x0000A1BD00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (55, CAST(0x0000A1BD00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (56, CAST(0x0000A1BD00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (57, CAST(0x0000A1BD00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (58, CAST(0x0000A1BD00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (59, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (60, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (61, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (62, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (63, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (64, CAST(0x0000A1BD00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (65, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (66, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (67, CAST(0x0000A1BF00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (68, CAST(0x0000A1BF00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (69, CAST(0x0000A1BD00000000 AS DateTime), 4, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (70, CAST(0x0000A1BD00000000 AS DateTime), 4, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (71, CAST(0x0000A1BE00000000 AS DateTime), 6, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (72, CAST(0x0000A1BE00000000 AS DateTime), 6, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (73, CAST(0x0000A1BE00000000 AS DateTime), 5, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (74, CAST(0x0000A1BE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (75, CAST(0x0000A1C600000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (76, CAST(0x0000A1C000000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (77, CAST(0x0000A1BF00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (78, CAST(0x0000A1C000000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (79, CAST(0x0000A1BF00000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (80, CAST(0x0000A1BF00000000 AS DateTime), 2, 2)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (81, CAST(0x0000A1C000000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (82, CAST(0x0000A1C000000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (83, CAST(0x0000A1C200000000 AS DateTime), 2, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (84, CAST(0x0000A1C000000000 AS DateTime), 9, 2)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (85, CAST(0x0000A1C100000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (86, CAST(0x0000A1C100000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (87, CAST(0x0000A1C100000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (88, CAST(0x0000A1C400000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (89, CAST(0x0000A1C200000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (90, CAST(0x0000A1C200000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (91, CAST(0x0000A1CE00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (92, CAST(0x0000A1C600000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (93, CAST(0x0000A1C700000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (94, CAST(0x0000A1C600000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (95, CAST(0x0000A1C700000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (96, CAST(0x0000A1C600000000 AS DateTime), 1, 2)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (97, CAST(0x0000A1C500000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (98, CAST(0x0000A1C500000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (99, CAST(0x0000A1C500000000 AS DateTime), 3, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (100, CAST(0x0000A1C500000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (101, CAST(0x0000A1C500000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (102, CAST(0x0000A1C600000000 AS DateTime), 1, 2)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (103, CAST(0x0000A1C600000000 AS DateTime), 1, 2)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (104, CAST(0x0000A1C600000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (105, CAST(0x0000A1C500000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (106, CAST(0x0000A1C600000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (107, CAST(0x0000A1DD00000000 AS DateTime), 1, 1)
/****** Object:  Table [dbo].[FlightBookingInsurances]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightBookingInsurances](
	[BookingId] [bigint] NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_FlightBookingInsurances] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (30, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (31, CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (32, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (33, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (34, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (36, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (37, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (38, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (39, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (40, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (41, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (42, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (43, CAST(900 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (44, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (45, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (46, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (47, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (48, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (49, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (50, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (51, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (52, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (53, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (54, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (55, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (57, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (58, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (59, CAST(250 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (60, CAST(250 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (61, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (62, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (63, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (69, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (70, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (71, CAST(1500 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (72, CAST(1500 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (75, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (77, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (78, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (79, CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (81, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (89, CAST(345 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (90, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (91, CAST(345 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (92, CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (93, CAST(345 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (98, CAST(250 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (99, CAST(750 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (100, CAST(250 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (102, CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingInsurances] ([BookingId], [Amount]) VALUES (106, CAST(450 AS Decimal(18, 0)))
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[AddFlight]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddFlight]
@FlightName nvarchar(500),
@AirLineId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
    INSERT INTO Flights (AirlineId, FlightName) VALUES(@AirLineId,@FlightName)
	 Select @@IDENTITY as 'FlightId'
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlights]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jagdeep>
-- Create date: <Create Date,,8/feb-2-13>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFlights]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT fl.FlightId,fl.FlightName,ai.AirlineId,ai.AirlineName,ai.AirlineCode from dbo.Flights fl inner join Airlines ai on fl.AirlineId=ai.AirlineId
END
GO
/****** Object:  StoredProcedure [dbo].[GetCities]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Jan 24th, 2013>
-- Description:	<Procedure to get all the cities>
-- =============================================
CREATE PROCEDURE [dbo].[GetCities] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Select
		c.CityId, c.CityName,
		s.StateId, s.StateName
	From
		Cities c, States s
	Where
		c.StateId = s.StateId
	Order By
		c.CityName
END
GO
/****** Object:  StoredProcedure [dbo].[GetCitiyById]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Srikanth Reddy E
-- Create date: June 8th, 2013
-- Description:	Procedure to get city by city id
-- =============================================
CREATE PROCEDURE [dbo].[GetCitiyById] 
	@CityId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT c.CityId, c.CityName, s.StateId, s.StateName
	FROM Cities c, States s
	WHERE c.StateId = s.StateId AND c.CityId = @CityId
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlightsID]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlightsID]
@FlightID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT fl.FlightId,fl.FlightName,ai.AirlineId,ai.AirlineName,ai.AirlineCode from dbo.Flights fl inner join Airlines ai on fl.AirlineId=ai.AirlineId
	where fl.FlightId = @FlightID;
END
GO
/****** Object:  Table [dbo].[Routes]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routes](
	[RouteId] [bigint] IDENTITY(1,1) NOT NULL,
	[FromCityId] [bigint] NOT NULL,
	[ToCityId] [bigint] NOT NULL,
	[DistanceInKms] [decimal](18, 0) NOT NULL CONSTRAINT [DF_Routes_DistanceInKms]  DEFAULT ((0.0)),
	[Status] [bit] NULL CONSTRAINT [DF_Routes_Status]  DEFAULT ((1)),
 CONSTRAINT [pk_Routes] PRIMARY KEY CLUSTERED 
(
	[RouteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Routes__5AEE82B9] UNIQUE NONCLUSTERED 
(
	[RouteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Routes] ON
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (22, 59, 107, CAST(3500 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (23, 107, 59, CAST(350 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (24, 59, 6, CAST(600 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (25, 63, 78, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (26, 78, 63, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (27, 66, 63, CAST(100 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (28, 114, 68, CAST(122 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (29, 130, 60, CAST(100 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (30, 131, 132, CAST(2000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (31, 135, 116, CAST(890 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (32, 59, 136, CAST(900 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (33, 136, 59, CAST(900 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (34, 137, 138, CAST(153 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (35, 114, 68, CAST(999 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (36, 107, 59, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (37, 58, 143, CAST(3000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (38, 58, 143, CAST(2000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (39, 58, 143, CAST(1000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (40, 114, 59, CAST(12 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (41, 116, 75, CAST(220 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[Routes] OFF
/****** Object:  Table [dbo].[Hotels]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[HotelId] [bigint] IDENTITY(1,1) NOT NULL,
	[HotelName] [nvarchar](100) NOT NULL,
	[PhotoURL] [nvarchar](100) NOT NULL,
	[BriefNote] [nvarchar](500) NULL,
	[StarRanking] [int] NULL,
	[CityId] [bigint] NOT NULL,
	[Address] [nvarchar](250) NULL,
	[PinCode] [nvarchar](20) NULL,
	[ContactNo] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[WebsiteURL] [nvarchar](100) NULL,
	[CheckOutTime] [datetime] NULL,
	[CheckInTime] [datetime] NULL,
 CONSTRAINT [pk_Hotels] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Hotels__5DCAEF64] UNIQUE NONCLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (1, N'Seagrape Gardens', N'0802546983', N'Situated on Residency Road, Seagrape Graden is just walkable distance from MG Road & 30 mtrs from Brigade Road. Seagrape Gardens is perfectly located in the heart of Bangalore''s business and entertainment district.', 4, 58, N'Nice', N'560003', N'09876543', NULL, NULL, NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (3, N'Ascot Hotel', N'0802565345', N'Brigade Road,Bangalore', 5, 59, N'Bangalore', N'560068', N'080-22224444', N'admin@ascot.com', N'', NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (4, N'Hotel Milan International', N'0223443334', N'2 Km from Juhu Beach , 1.2 Km from Santacruz Local Railway Station ', 3, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (5, N'The Lalit Mumbai', N'0223344444', N'Located at Andheri, The Lalit Mumbai is the closest Mumbai hotels to Chhatrapathi Shivaji International airport, at', 4, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (6, N'Savera', N'0443345555', N'5 Km to American Consulate , 7.3 Km to Chennai Central Railway Station , 3 Km to Marina Beach , 7 In-House Dining ', 3, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (7, N'Tri Sea Residency', N'0449953322', N'2 Min Walk to Marina Beach , 2 Km to Egmore Railway Station , Within 1 Km of Shopping Malls , ', 4, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (8, N'Hotel Trimoorti ', N'0235444445', N'Located within 2.5 km from Park Street Metro Station, INOX Theatre and Blue Vue Hospital and Garihat Shopping Complex', 3, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (10, N'Swagatam Inn', N'0234432344', N'Offering lawns/gardens, sightseeing and guide service, Hotel N.S. International is located just a 2-minutes drive from ', 4, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hotels] ([HotelId], [HotelName], [PhotoURL], [BriefNote], [StarRanking], [CityId], [Address], [PinCode], [ContactNo], [Email], [WebsiteURL], [CheckOutTime], [CheckInTime]) VALUES (11, N'Seagrape Gardens', N'0802546983', N'Situated on Residency Road, Seagrape Graden is just walkable distance from MG Road & 30 mtrs from Brigade Road. Seagrape Gardens is perfectly located in the heart of Bangalore''s business and entertainment district.', 4, 58, N'Nice', N'560003', N'09876543', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hotels] OFF
/****** Object:  StoredProcedure [dbo].[UpdateFlight]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFlight]
	-- Add the parameters for the stored procedure here
	@flightid int,
	@flightname varchar(100),
	@airlineId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update 
		Flights 
	set 
		FlightName = @flightname,
		AirlineId = @airlineId 
	where 
	FlightId = @flightid
END
GO
/****** Object:  Table [dbo].[UserBookings]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBookings](
	[BookingId] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__UserBooki__UserI__498EEC8D]  DEFAULT (newid()),
 CONSTRAINT [pk_UserBookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (20, N'e08dddf1-79d0-457d-b460-94093028f199')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (21, N'e08dddf1-79d0-457d-b460-94093028f199')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (26, N'e08dddf1-79d0-457d-b460-94093028f199')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (30, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (31, N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (35, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (38, N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (39, N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (40, N'a6e1cc34-a5c1-4a6b-b241-5b09b9014142')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (55, N'e08dddf1-79d0-457d-b460-94093028f199')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (58, N'e08dddf1-79d0-457d-b460-94093028f199')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (59, N'6c0a8c36-2c7f-4ce4-8a3e-45c8840226ab')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (69, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (70, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (71, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (72, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (73, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (77, N'2f5c9bf2-3cdf-4803-92b4-ddeb95530b68')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (78, N'2f5c9bf2-3cdf-4803-92b4-ddeb95530b68')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (80, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (81, N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (82, N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (83, N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (84, N'd1de68c2-5baa-49c5-bfbb-b49daa8fe5bd')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (86, N'23eebc3f-ac79-499b-8577-3cf75da45e67')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (87, N'23eebc3f-ac79-499b-8577-3cf75da45e67')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (88, N'23eebc3f-ac79-499b-8577-3cf75da45e67')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (90, N'e08dddf1-79d0-457d-b460-94093028f199')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (91, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (92, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (93, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (94, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (95, N'c10c7e9a-c414-4444-81b9-e31928b93bff')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (96, N'8de73d65-ab97-4b66-8a7e-0a22d79df48e')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (97, N'8de73d65-ab97-4b66-8a7e-0a22d79df48e')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (98, N'8de73d65-ab97-4b66-8a7e-0a22d79df48e')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (99, N'8de73d65-ab97-4b66-8a7e-0a22d79df48e')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (100, N'8de73d65-ab97-4b66-8a7e-0a22d79df48e')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (101, N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (102, N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (103, N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45')
INSERT [dbo].[UserBookings] ([BookingId], [UserId]) VALUES (106, N'e9ca9f78-0d9a-4e26-bd0a-14e9eb152e45')
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlightClass]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFlightClass]
	-- Add the parameters for the stored procedure here
	@flightId int,
	@classId int,
	@noOfSeats int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update 
		FlightClasses
	set 
		NoOfSeats = @noOfSeats
	where 
		FlightId = @flightId AND
		ClassId = @classId
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 07/29/2013 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ScheduleId] [bigint] IDENTITY(1,1) NOT NULL,
	[FlightId] [bigint] NOT NULL,
	[RouteId] [bigint] NOT NULL,
	[DepartureTime] [datetime] NULL,
	[ArrivalTime] [datetime] NULL,
	[DurationInMins] [int] NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Schedules_IsActive]  DEFAULT ((1)),
 CONSTRAINT [pk_FlightRoutes] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__FlightRo__812C3CFD123EB7A3] UNIQUE NONCLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Schedules] ON
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (19, 24, 22, CAST(0x0000A1DC00107AC0 AS DateTime), CAST(0x0000A1DC002EB120 AS DateTime), 110, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (20, 9, 23, CAST(0x0000A1B9016A8C80 AS DateTime), CAST(0x0000A1B9017B0740 AS DateTime), 60, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (21, 16, 25, CAST(0x0000A1BB00A4CB80 AS DateTime), CAST(0x0000A1BB00C88020 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (22, 16, 26, CAST(0x0000A1C300F73140 AS DateTime), CAST(0x0000A1C3011AE5E0 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (23, 13, 35, CAST(0x0000A1C3001339E0 AS DateTime), CAST(0x0000A1C30023B4A0 AS DateTime), 60, 0)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (24, 17, 28, CAST(0x0000A1BB001339E0 AS DateTime), CAST(0x0000A1BB0023B4A0 AS DateTime), 60, 0)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (25, 21, 30, CAST(0x0000A1BB005AA320 AS DateTime), CAST(0x0000A1BB00BAC480 AS DateTime), 350, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (26, 11, 29, CAST(0x0000A1BB004A2860 AS DateTime), CAST(0x0000A1BB00A20C60 AS DateTime), 320, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (27, 11, 29, CAST(0x0000A1BB004A2860 AS DateTime), CAST(0x0000A1BB00A20C60 AS DateTime), 320, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (28, 11, 29, CAST(0x0000A1BB004A2860 AS DateTime), CAST(0x0000A1BB00A20C60 AS DateTime), 320, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (29, 9, 26, CAST(0x0000A1BB00F73140 AS DateTime), CAST(0x0000A1BB011826C0 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (30, 24, 31, CAST(0x0000A1BD00A4CB80 AS DateTime), CAST(0x0000A1BD00C5C100 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (31, 13, 30, CAST(0x0000A1BD0128A180 AS DateTime), CAST(0x0000A1BD014159A0 AS DateTime), 90, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (32, 9, 23, CAST(0x0000A1BD016A8C80 AS DateTime), CAST(0x0000A1BD017B0740 AS DateTime), 60, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (33, 9, 23, CAST(0x0000A1BD016A8C80 AS DateTime), CAST(0x0000A1BD017B0740 AS DateTime), 60, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (34, 24, 32, CAST(0x0000A1BD0002BF20 AS DateTime), CAST(0x0000A1BD00057E40 AS DateTime), 10, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (35, 24, 33, CAST(0x0000A1BD0015F900 AS DateTime), CAST(0x0000A1BD002EB120 AS DateTime), 90, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (36, 24, 33, CAST(0x0000A1BD01499700 AS DateTime), CAST(0x0000A1BD015A11C0 AS DateTime), 60, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (37, 14, 32, CAST(0x0000A1BD0002BF20 AS DateTime), CAST(0x0000A1BD000DBBA0 AS DateTime), 40, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (38, 31, 34, CAST(0x0000A1BF00057E40 AS DateTime), CAST(0x0000A1BF000DBBA0 AS DateTime), 30, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (39, 12, 32, CAST(0x0000A1BF00A4CB80 AS DateTime), CAST(0x0000A1BF00C5C100 AS DateTime), 120, 0)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (40, 14, 33, CAST(0x0000A1C000D63BC0 AS DateTime), CAST(0x0000A1C000F73140 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (41, 32, 28, CAST(0x0000A1BF00A4CB80 AS DateTime), CAST(0x0000A1BF0002BF20 AS DateTime), 850, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (42, 32, 28, CAST(0x0000A1BF0002BF20 AS DateTime), CAST(0x0000A1BF00057E40 AS DateTime), 10, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (43, 15, 22, CAST(0x0000A1C000E975A0 AS DateTime), CAST(0x0000A1C000F47220 AS DateTime), 40, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (44, 32, 28, CAST(0x0000A1BF0036EE80 AS DateTime), CAST(0x0000A1BF005AA320 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (45, 15, 24, CAST(0x0000A1C000A4CB80 AS DateTime), CAST(0x0000A1C000BD83A0 AS DateTime), 90, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (46, 15, 24, CAST(0x0000A1C000D63BC0 AS DateTime), CAST(0x0000A1C000EEF3E0 AS DateTime), 90, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (47, 15, 25, CAST(0x0000A1C0009450C0 AS DateTime), CAST(0x0000A1C000AD08E0 AS DateTime), 90, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (48, 15, 32, CAST(0x0000A1C0005265C0 AS DateTime), CAST(0x0000A1C0009450C0 AS DateTime), 240, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (49, 15, 32, CAST(0x0000A1C00083D600 AS DateTime), CAST(0x0000A1C000C5C100 AS DateTime), 240, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (50, 15, 34, CAST(0x0000A1C00020F580 AS DateTime), CAST(0x0000A1C0005265C0 AS DateTime), 180, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (51, 15, 30, CAST(0x0000A1C00107AC00 AS DateTime), CAST(0x0000A1C00128A180 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (52, 35, 36, CAST(0x0000A1C30083D600 AS DateTime), CAST(0x0000A1C3009C8E20 AS DateTime), 90, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (53, 24, 30, CAST(0x0000A1CA0020F580 AS DateTime), CAST(0x0000A1CA00317040 AS DateTime), 60, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (54, 36, 39, CAST(0x0000A1D800685EC0 AS DateTime), CAST(0x0000A1D800CB3F40 AS DateTime), 360, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (55, 34, 40, CAST(0x0000A1DC0020F580 AS DateTime), CAST(0x0000A1DC0041EB00 AS DateTime), 120, 1)
SET IDENTITY_INSERT [dbo].[Schedules] OFF
/****** Object:  StoredProcedure [dbo].[UpdateRoutes]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateRoutes]
	-- Add the parameters for the stored procedure here
	@ID bigint,@DisInKms decimal,@Status bit	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Routes set DistanceInKms = @DisInKms, Status = @Status 
	where RouteId = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateHotel]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Mar 20th 2013>
-- Description:	<Procedure to add hotel information>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateHotel]
	@HotelId bigint,
	@HotelName nvarchar(100),
	@PhotoURL nvarchar(100),
	@BriefNote nvarchar(500),
	@StarRanking int,
	@CityId bigint,
	@Address nvarchar(250),
	@PinCode nvarchar(20),
	@ContactNo nvarchar(100),
	@Email nvarchar(100),
	@WebsiteURL	nvarchar(100)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Select statements for procedure here
	UPDATE 
		Hotels 
	SET 
		HotelName = @HotelName, 
		PhotoURL = @PhotoURL, 
		BriefNote = @BriefNote, 
		StarRanking = @StarRanking, 
		CityId = @CityId, 
		Address = @Address,
		PinCode = @PinCode, 
		ContactNo = @ContactNo, 
		Email = @Email,  
		WebsiteURL = @WebsiteURL
	WHERE
		HotelId = @HotelId	
	
END
GO
/****** Object:  StoredProcedure [dbo].[InsertRoute]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertRoute]
	@fromcityID int,@toCityID int,@dis decimal,@st bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Routes(FromCityId,ToCityId,DistanceInKms,Status) values(@fromcityID,@toCityID,@dis,@st);
END
GO
/****** Object:  StoredProcedure [dbo].[InsertBookingForUser]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <12th Feb, 2013>
-- Description:	<Procedure to add booking for a user>
-- =============================================
CREATE PROCEDURE [dbo].[InsertBookingForUser]
	-- Add the parameters for the stored procedure here
	@BookingReferenceNumber nvarchar(100),
	@UserName nvarchar(100)
	
AS
BEGIN
	DECLARE @UserId uniqueidentifier
	DECLARE @BookingId bigint
	
	-- Select information from the table
	Select @UserId = UserId From aspnet_Users Where UserName = @UserName
	Select @BookingId = BookingId From Bookings Where BookingReferenceNo = @BookingReferenceNumber
	
	--Insert Into the Bookings Table
	INSERT INTO UserBookings(UserId, BookingId)
	VALUES(@UserId, @BookingId)
	
END
GO
/****** Object:  Table [dbo].[HotelRooms]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelRooms](
	[HotelId] [bigint] NOT NULL,
	[TypeId] [int] NOT NULL,
	[CostPerDay] [float] NOT NULL,
	[NoOfRooms] [int] NOT NULL,
 CONSTRAINT [pk_HotelRooms] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC,
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HotelRooms] ([HotelId], [TypeId], [CostPerDay], [NoOfRooms]) VALUES (3, 1, 2000, 10)
INSERT [dbo].[HotelRooms] ([HotelId], [TypeId], [CostPerDay], [NoOfRooms]) VALUES (3, 2, 6000, 5)
/****** Object:  Table [dbo].[HotelReviews]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelReviews](
	[HotelId] [bigint] NOT NULL,
	[ReviewId] [bigint] NOT NULL,
	[Rating] [tinyint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__HotelRevi__UserI__4B7734FF]  DEFAULT (newid()),
 CONSTRAINT [pk_HotelReviews] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC,
	[ReviewId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelBookings]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelBookings](
	[BookingId] [bigint] NOT NULL,
	[HotelId] [bigint] NOT NULL,
	[CheckInDate] [datetime] NOT NULL,
	[CheckOutDate] [datetime] NOT NULL,
	[NoOfPeople] [int] NOT NULL,
	[NoOfRooms] [int] NOT NULL,
 CONSTRAINT [pk_HotelBookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passengers]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passengers](
	[PassengerId] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gender] [char](6) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
 CONSTRAINT [pk_Passengers] PRIMARY KEY CLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Passengers__76969D2E] UNIQUE NONCLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Passengers] ON
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (21, 20, N'Anand', N'M     ', CAST(0x000079D300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (22, 21, N'Anand', N'M     ', CAST(0x0000786000000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (23, 22, N'Anand', N'M     ', CAST(0x00006CD600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (24, 23, N'Anand', N'M     ', CAST(0x0000A19300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (25, 24, N'Anand', N'M     ', CAST(0x0000A19B00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (26, 25, N'Anand', N'M     ', CAST(0x0000A19300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (27, 26, N'Anand', N'M     ', CAST(0x0000A19300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (28, 27, N'Anand', N'M     ', CAST(0x0000A19300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (29, 28, N'Krishna Kumar S', N'M     ', CAST(0x0000A1A200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (30, 29, N'Anand', N'M     ', CAST(0x00006E6400000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (31, 30, N'srinua', N'M     ', CAST(0x00007B3800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (32, 31, N'Srinu', N'M     ', CAST(0x0000A1B700000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (33, 32, N'Anand1', N'M     ', CAST(0x000080EF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (34, 32, N'Anand2', N'M     ', CAST(0x00007CA900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (35, 33, N'Anand1', N'M     ', CAST(0x00008AE900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (36, 33, N'Anand2', N'M     ', CAST(0x000079D300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (37, 34, N'Anand1', N'M     ', CAST(0x00008AE900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (38, 34, N'Anand2', N'M     ', CAST(0x000079D300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (39, 35, N'srinu', N'M     ', CAST(0x0000909800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (40, 36, N'Anand1', N'M     ', CAST(0x0000741500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (41, 36, N'Anand2', N'M     ', CAST(0x000072AF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (42, 37, N'Anand1', N'M     ', CAST(0x0000741500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (43, 37, N'Anand2', N'M     ', CAST(0x000072AF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (44, 38, N'sdfsdfsdf', N'F     ', CAST(0x00008D0C00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (45, 38, N'sdfsdf', N'M     ', CAST(0x00008D0C00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (46, 38, N'sdfsdfsd', N'M     ', CAST(0x00008D0C00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (47, 39, N'srinu', N'M     ', CAST(0x00007E1500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (48, 40, N'Srinu', N'M     ', CAST(0x0000A1B600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (49, 41, N'Anand1', N'M     ', CAST(0x00007B3600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (50, 41, N'Anand2', N'M     ', CAST(0x000072AF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (51, 42, N'Anand1', N'M     ', CAST(0x000079CB00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (52, 42, N'Anand2', N'M     ', CAST(0x00006E5D00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (53, 43, N'Anand1', N'M     ', CAST(0x00007F7B00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (54, 43, N'Anand2', N'M     ', CAST(0x0000785900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (55, 44, N'Anand1', N'M     ', CAST(0x000083CD00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (56, 44, N'Anand2', N'M     ', CAST(0x00007F8900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (57, 45, N'Anand1', N'M     ', CAST(0x0000869F00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (58, 45, N'Anand2', N'M     ', CAST(0x00007E5600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (59, 46, N'a1', N'M     ', CAST(0x000083C800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (60, 46, N'a2', N'M     ', CAST(0x0000785E00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (61, 47, N'a1', N'M     ', CAST(0x000080EE00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (62, 47, N'a2', N'M     ', CAST(0x000083C700000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (63, 48, N'a1', N'M     ', CAST(0x00007F8200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (64, 48, N'a2', N'M     ', CAST(0x00007CA400000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (65, 49, N'a1', N'M     ', CAST(0x00007F8200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (66, 49, N'a2', N'M     ', CAST(0x00007CA400000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (67, 50, N'fasfsd', N'M     ', CAST(0x00007EC800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (68, 51, N'fasfsd', N'M     ', CAST(0x00007EC800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (69, 52, N'a1', N'M     ', CAST(0x0000880A00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (70, 52, N'a2', N'M     ', CAST(0x0000853300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (71, 53, N'a1', N'M     ', CAST(0x0000880A00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (72, 53, N'a2', N'M     ', CAST(0x0000853300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (73, 54, N'a1', N'M     ', CAST(0x0000869F00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (74, 54, N'a2', N'M     ', CAST(0x0000713C00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (75, 55, N'a1', N'M     ', CAST(0x000076F300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (76, 56, N'a1', N'M     ', CAST(0x000079CC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (77, 57, N'a1', N'M     ', CAST(0x000079CC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (78, 58, N'Anand', N'M     ', CAST(0x0000713D00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (79, 59, N'A1', N'M     ', CAST(0x0000853200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (80, 60, N'a1', N'M     ', CAST(0x000080F600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (81, 61, N'a1', N'M     ', CAST(0x000065CC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (82, 62, N'A1', N'M     ', CAST(0x0000785F00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (83, 63, N'aa', N'M     ', CAST(0x000080EE00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (84, 64, N'aa', N'M     ', CAST(0x000079CB00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (85, 65, N'aa', N'M     ', CAST(0x000079CC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (86, 66, N'aa', N'M     ', CAST(0x0000869F00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (87, 67, N'aa', N'M     ', CAST(0x0000758600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (88, 68, N'aa', N'M     ', CAST(0x00006FC900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (89, 69, N'Tester', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (90, 69, N'Tester', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (91, 69, N'Tester', N'M     ', CAST(0x0000A1B700000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (92, 69, N'Tester', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (93, 70, N'Tester', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (94, 70, N'Tester', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (95, 70, N'Tester', N'M     ', CAST(0x0000A1B700000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (96, 70, N'Tester', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (97, 71, N'abc', N'M     ', CAST(0x0000A1BC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (98, 71, N'av', N'M     ', CAST(0x0000A1F900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (99, 71, N'ac', N'M     ', CAST(0x0000A45900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (100, 71, N'rr', N'M     ', CAST(0x0000A19E00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (101, 71, N'rr', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (102, 71, N'tt', N'M     ', CAST(0x0000A1B800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (103, 72, N'abc', N'M     ', CAST(0x0000A1BC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (104, 72, N'av', N'M     ', CAST(0x0000A1F900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (105, 72, N'ac', N'M     ', CAST(0x0000A45900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (106, 72, N'rr', N'M     ', CAST(0x0000A19E00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (107, 72, N'rr', N'M     ', CAST(0x0000A1B500000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (108, 72, N'tt', N'M     ', CAST(0x0000A1B800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (109, 73, N'hello', N'M     ', CAST(0x0000A1B600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (110, 73, N'my', N'M     ', CAST(0x0000A1B700000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (111, 73, N'name', N'M     ', CAST(0x0000A1B700000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (112, 73, N'is', N'M     ', CAST(0x0000A1B800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (113, 73, N'tester', N'M     ', CAST(0x0000A1B600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (114, 74, N'ss', N'M     ', CAST(0x000076EC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (115, 75, N'Krishna Kumar S', N'M     ', CAST(0x0000A1A200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (116, 76, N'aa', N'M     ', CAST(0x00009EDD00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (117, 77, N'Srikanth Reddy', N'M     ', CAST(0x0000869E00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (118, 78, N'Srikanth Reddy', N'M     ', CAST(0x0000869E00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (119, 79, N'Subramanian', N'M     ', CAST(0x00006C8800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (120, 79, N'Ramya', N'F     ', CAST(0x000071D000000000 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (121, 80, N'kk', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (122, 80, N'kk', N'M     ', CAST(0x0000A1B200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (123, 81, N'vk', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (124, 82, N'vk', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (125, 83, N'vk', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (126, 83, N'vvk', N'M     ', CAST(0x0000A1B200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (127, 84, N'vk', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (128, 84, N'vk1', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (129, 84, N'vk3', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (130, 84, N'vk4', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (131, 84, N'vk5', N'M     ', CAST(0x0000A1B800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (132, 84, N'vk6', N'M     ', CAST(0x0000A1BC00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (133, 84, N'vk7', N'M     ', CAST(0x0000A1B900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (134, 84, N'vk7', N'M     ', CAST(0x0000A1BE00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (135, 84, N'vk', N'M     ', CAST(0x0000A1B300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (136, 85, N'Thava Alagu', N'M     ', CAST(0x0000A1BF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (137, 86, N'Thava Alagu', N'M     ', CAST(0x0000A1B100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (138, 87, N'Thava Alagu', N'M     ', CAST(0x0000A1B800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (139, 88, N'Thava Alagu', N'M     ', CAST(0x0000A1B800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (140, 89, N'John', N'M     ', CAST(0x00007CA300000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (141, 90, N'Jane', N'F     ', CAST(0x0000758100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (142, 91, N'sudhirkumar', N'M     ', CAST(0x00006CA800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (143, 92, N'Manjunath', N'M     ', CAST(0x0000922800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (144, 93, N'Manjunath', N'M     ', CAST(0x0000922800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (145, 94, N'Manjunath', N'M     ', CAST(0x0000853200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (146, 95, N'Manjunath', N'M     ', CAST(0x0000853200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (147, 96, N'shashank', N'M     ', CAST(0x00008AE900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (148, 97, N'shashank', N'M     ', CAST(0x00008C5600000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (149, 98, N'shashank', N'M     ', CAST(0x0000965800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (150, 99, N'shashank', N'M     ', CAST(0x0000A1BE00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (151, 99, N'mahadev', N'M     ', CAST(0x00008AEF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (152, 99, N'shylaja', N'F     ', CAST(0x0000965800000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (153, 100, N'shashank', N'M     ', CAST(0x0000A1BF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (154, 101, N'shashank', N'M     ', CAST(0x0000A1BF00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (155, 102, N'shashank', N'M     ', CAST(0x00007B3D00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (156, 103, N'shashank', N'M     ', CAST(0x0000921B00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (157, 104, N'aa', N'M     ', CAST(0x00007CA400000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (158, 105, N'aa', N'M     ', CAST(0x00007C9C00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (159, 106, N'shashank', N'M     ', CAST(0x0000A1B900000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (160, 107, N'Srikanth Reddy', N'M     ', CAST(0x000086BC00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Passengers] OFF
/****** Object:  StoredProcedure [dbo].[GetRoutes]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRoutes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		r.RouteId,
		c.CityId "FromCityId",
		c.CityName "FromCityName",
		t.CityId "ToCityId",
		t.CityName "ToCityName",
		r.DistanceInKms,
		r.Status,
		fs.StateId "FromStateId",
		fs.StateName "FromStateName",
		ts.StateId "ToStateId",
		ts.StateName "ToStateName"
	from Routes r 
	join Cities c on r.FromCityId = c.CityId 
	join States fs on c.StateId = fs.StateId
	join Cities t on r.ToCityId = t.CityId
	join States ts on t.StateId = ts.StateId
END
GO
/****** Object:  StoredProcedure [dbo].[GetRouteId]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRouteId]
	-- Add the parameters for the stored procedure here
	@fromcity bigint, @tocity bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select 
	dbo.Routes.RouteId 
from 
	dbo.Routes join dbo.Cities f 
	on dbo.Routes.FromCityId = f.CityId join dbo.Cities t 
	on dbo.Routes.ToCityId = t.CityId
where 
	f.CityId = @fromcity 
	and t.CityId = @tocity
END
GO
/****** Object:  StoredProcedure [dbo].[GetHotels]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Mar 20th 2013>
-- Description:	<Procedure to get hotels with contact and rating information>
-- =============================================
CREATE PROCEDURE [dbo].[GetHotels]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Select statements for procedure here
	SELECT 
		h.HotelId, h.HotelName, h.PhotoURL, h.BriefNote, h.StarRanking, h.Address,
		h.PinCode, h.ContactNo, h.Email, h.WebsiteURL, h.CheckOutTime, h.CheckInTime,
		c.CityId, c.CityName, s.StateId,s.StateName
	FROM
		Hotels h, Cities c, States s
	WHERE
		h.CityId = c.CityId
		and c.StateId = s.StateId
	ORDER BY
		h.HotelName
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlightsAndFlightClasses]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Srikanth Reddy
-- Create date: 06/08/2013
-- Description:	Get all flights and Flight Classes
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightsAndFlightClasses]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT fl.FlightId,fl.FlightName,ai.AirlineId,ai.AirlineName,ai.AirlineCode from dbo.Flights fl inner join Airlines ai on fl.AirlineId=ai.AirlineId
	SELECT fc.FlightId,c.ClassId,c.ClassType,fc.NoOfSeats from FlightClasses fc inner join Classes c on fc.ClassId=c.ClassId ORDER BY FlightId
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlightAndClasses]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Srikanth Reddy
-- Create date: 06/08/2013
-- Description:	Get flight for given flight id and its Flight Classes
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightAndClasses]
@FlightID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT fl.FlightId,fl.FlightName,ai.AirlineId,ai.AirlineName,ai.AirlineCode 
	FROM dbo.Flights fl inner join Airlines ai ON fl.AirlineId=ai.AirlineId
	WHERE fl.FlightId = @FlightID;
	
	SELECT fc.FlightId,c.ClassId,c.ClassType,fc.NoOfSeats 
	FROM FlightClasses fc inner join Classes c on fc.ClassId=c.ClassId 
	WHERE fc.FlightId=@FlightID
END
GO
/****** Object:  StoredProcedure [dbo].[GetCitiesWithHotels]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[NewStoredProcedure]    Script Date: 06/22/2013 02:39:42 ******/
CREATE PROCEDURE [dbo].[GetCitiesWithHotels]
AS

       SELECT 
		c.CityId, c.CityName, s.StateId,s.StateName
	FROM
		Cities c, States s
	WHERE
		c.CityId in (Select CityId From Hotels)
                and c.StateId = s.StateId
	ORDER BY
		c.CityName
GO
/****** Object:  StoredProcedure [dbo].[GetFlightClasses]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jagdeep>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightClasses]
@FlightId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select fc.FlightId,c.ClassId,c.ClassType,fc.NoOfSeats from FlightClasses fc inner join Classes c on fc.ClassId=c.ClassId where fc.FlightId=@FlightId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[AddHotel]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Mar 20th 2013>
-- Description:	<Procedure to add hotel information>
-- =============================================
CREATE PROCEDURE [dbo].[AddHotel]
	@HotelName nvarchar(100),
	@PhotoURL nvarchar(100),
	@BriefNote nvarchar(500),
	@StarRanking int,
	@CityId bigint,
	@Address nvarchar(250),
	@PinCode nvarchar(20),
	@ContactNo nvarchar(100),
	@Email nvarchar(100),
	@WebsiteURL	nvarchar(100)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Select statements for procedure here
	INSERT INTO Hotels (HotelName, PhotoURL, BriefNote, StarRanking, CityId, Address,
		PinCode, ContactNo, Email, WebsiteURL)
	VALUES (@HotelName, @PhotoURL, @BriefNote, @StarRanking, @CityId, @Address,
		@PinCode, @ContactNo, @Email, @WebsiteURL)	
	
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 07/29/2013 09:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Table [dbo].[FlightBookingSchedules]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightBookingSchedules](
	[FlightBookingScheduleId] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NOT NULL,
	[ScheduleId] [bigint] NOT NULL,
	[CostPerTicket] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_FlightBookingSchedules] PRIMARY KEY CLUSTERED 
(
	[FlightBookingScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FlightBookingSchedules] ON
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (18, 20, 19, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (19, 21, 19, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (20, 22, 19, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (21, 23, 19, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (22, 24, 19, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (23, 25, 19, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (24, 26, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (25, 27, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (26, 28, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (27, 29, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (28, 30, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (29, 31, 25, CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (30, 32, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (31, 33, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (32, 34, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (33, 35, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (34, 36, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (35, 37, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (36, 38, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (37, 39, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (38, 40, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (39, 41, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (40, 42, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (41, 43, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (42, 44, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (43, 45, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (44, 46, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (45, 47, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (46, 48, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (47, 49, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (48, 50, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (49, 51, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (50, 52, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (51, 53, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (52, 54, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (53, 55, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (54, 56, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (55, 57, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (56, 58, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (57, 59, 21, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (58, 60, 21, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (59, 61, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (60, 62, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (61, 63, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (62, 64, 25, CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (63, 65, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (64, 66, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (65, 67, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (66, 68, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (67, 69, 35, CAST(123.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (68, 70, 34, CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (69, 71, 36, CAST(932.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (70, 72, 34, CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (71, 73, 37, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (72, 74, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (73, 75, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (74, 76, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (75, 77, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (76, 78, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (77, 79, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (78, 80, 19, CAST(9000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (79, 81, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (80, 82, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (81, 83, 21, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (82, 84, 38, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (83, 85, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (84, 86, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (85, 87, 19, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (86, 88, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (87, 89, 43, CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (88, 90, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (89, 91, 43, CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (90, 92, 32, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (91, 93, 43, CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (92, 94, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (93, 95, 43, CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (94, 96, 45, CAST(5001.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (95, 97, 43, CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (96, 98, 30, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (97, 99, 30, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (98, 100, 30, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (99, 101, 30, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (100, 102, 45, CAST(5001.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (101, 103, 45, CAST(5001.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (102, 104, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (103, 105, 20, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (104, 106, 45, CAST(3001.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (105, 107, 20, CAST(3000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[FlightBookingSchedules] OFF
/****** Object:  Table [dbo].[FlightCosts]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightCosts](
	[FlightCostId] [bigint] IDENTITY(1,1) NOT NULL,
	[ScheduleId] [bigint] NOT NULL,
	[ClassId] [int] NOT NULL,
	[CostPerTicket] [decimal](18, 2) NOT NULL,
 CONSTRAINT [pk_FlightRouteCosts] PRIMARY KEY CLUSTERED 
(
	[FlightCostId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__FlightRo__9BF4383D3E1D39E1] UNIQUE NONCLUSTERED 
(
	[FlightCostId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FlightCosts] ON
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (29, 19, 1, CAST(2050.75 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (30, 19, 2, CAST(9100.75 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (31, 20, 1, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (32, 20, 2, CAST(9000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (33, 21, 1, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (34, 21, 2, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (35, 22, 1, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (36, 22, 2, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (37, 23, 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (38, 23, 2, CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (39, 24, 1, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (40, 24, 2, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (41, 25, 1, CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (42, 25, 2, CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (43, 26, 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (44, 26, 2, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (45, 27, 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (46, 27, 2, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (47, 28, 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (48, 28, 2, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (49, 29, 1, CAST(6000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (50, 29, 2, CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (51, 30, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (52, 30, 2, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (53, 31, 1, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (54, 31, 2, CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (55, 32, 1, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (56, 32, 2, CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (57, 33, 1, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (58, 33, 2, CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (59, 34, 1, CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (60, 34, 2, CAST(22.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (61, 35, 1, CAST(123.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (62, 35, 2, CAST(122.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (63, 36, 1, CAST(932.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (64, 36, 2, CAST(786.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (65, 37, 1, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (66, 37, 2, CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (67, 38, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (68, 38, 2, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (69, 39, 1, CAST(3001.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (70, 39, 2, CAST(5001.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (71, 40, 1, CAST(3401.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (72, 40, 2, CAST(6006.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (73, 41, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (74, 41, 2, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (75, 42, 1, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (76, 42, 2, CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (77, 43, 1, CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (78, 43, 2, CAST(3001.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (79, 44, 1, CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (80, 44, 2, CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (81, 45, 1, CAST(3000.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (82, 45, 2, CAST(5000.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (83, 46, 1, CAST(3000.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (84, 46, 2, CAST(5000.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (85, 47, 1, CAST(3000.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (86, 47, 2, CAST(5000.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (87, 48, 1, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (88, 48, 2, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (89, 49, 1, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (90, 49, 2, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (91, 50, 1, CAST(1000.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (92, 50, 2, CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (93, 51, 1, CAST(2500.50 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (94, 51, 2, CAST(5000.75 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (95, 52, 1, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (96, 52, 2, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (97, 53, 1, CAST(2200.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (98, 54, 1, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (99, 54, 2, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (100, 55, 1, CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (101, 55, 2, CAST(5500.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[FlightCosts] OFF
/****** Object:  StoredProcedure [dbo].[GetFlightClassesForSchedule]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Amloorp Anand
-- Create date: 28th April, 2013
-- Description:	SP to get the flight classes for a given schedule
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightClassesForSchedule] 
	-- Add the parameters for the stored procedure here
	@scheduleid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select cls.classtype, fc.noofseats, fc.classid 
		from classes cls, flightclasses fc, schedules s
		where fc.classid = cls.classid and
		s.scheduleid = @scheduleid and s.flightid=fc.flightid
END
GO
/****** Object:  StoredProcedure [dbo].[InsertSchedule]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertSchedule]
	-- Add the parameters for the stored procedure here
	@flightid int,@routeid int,@departuretime DATETIME,@arrivaltime DATETIME,@dur int,@isactive bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
insert into Schedules(FlightId,RouteId,DepartureTime,ArrivalTime,DurationInMins,IsActive) 
   values(@flightid,@routeid,@departuretime,@arrivaltime,@dur,@isactive)
   
   select @@IDENTITY as 'Schedule Id'
   
END
GO
/****** Object:  Table [dbo].[HotelBookingRooms]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelBookingRooms](
	[BookingId] [bigint] NOT NULL,
	[TypeId] [int] NOT NULL,
	[CostPerDay] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlight]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetScheduleFlight]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select dbo.Schedules.ScheduleId,dbo.Schedules.RouteId,t.CityId "ToId",t.CityName "ToCity",f.CityId "FromId",f.CityName "FromCity",DepartureTime,ArrivalTime,DistanceInKms,DurationInMins,dbo.Flights.AirlineId,AirlineName,dbo.Schedules.FlightId,FlightName,Status from dbo.Schedules join dbo.Routes
on dbo.Schedules.RouteId = dbo.Routes.RouteId join dbo.Cities f
on dbo.Routes.FromCityId = f.CityId join dbo.Cities t on dbo.Routes.ToCityId = t.CityId join dbo.Flights
on dbo.Schedules.FlightId = dbo.Flights.FlightId join dbo.Airlines
on dbo.Flights.AirlineId = dbo.Airlines.AirlineId
END
GO
/****** Object:  StoredProcedure [dbo].[getScheduleDetails_BasedID]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getScheduleDetails_BasedID]
	-- Add the parameters for the stored procedure here
	@scheduleid int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select dbo.Schedules.ScheduleId,dbo.Schedules.RouteId,t.CityId "FromId",t.CityName "FromCity",f.CityId "ToId",f.CityName "ToCity",DepartureTime,ArrivalTime,DistanceInKms,DurationInMins,dbo.Flights.AirlineId,AirlineName,dbo.Schedules.FlightId,FlightName,schedules.IsActive as "Status" from dbo.Schedules join dbo.Routes
on dbo.Schedules.RouteId = dbo.Routes.RouteId join dbo.Cities f
on dbo.Routes.FromCityId = f.CityId join dbo.Cities t on dbo.Routes.ToCityId = t.CityId join dbo.Flights
on dbo.Schedules.FlightId = dbo.Flights.FlightId join dbo.Airlines
on dbo.Flights.AirlineId = dbo.Airlines.AirlineId
where dbo.Schedules.ScheduleId = @scheduleid
END
GO
/****** Object:  StoredProcedure [dbo].[GetTravelInventory]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Amloorp Anand
-- Create date: 28th April, 2013
-- Description:	Method to get travel inventory
-- =============================================
CREATE PROCEDURE [dbo].[GetTravelInventory]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
/*
    select 
		distinct s.scheduleid , fc.cityname, tc.cityname, f.flightname, 
		a.airlinename, CONVERT(VARCHAR(10),s.departuretime,108) as 'DepartureTime', 
		CONVERT(VARCHAR(10),s.arrivaltime,108) as 'ArrivalTime', 
		s.durationinmins
	from 
		Schedules s, Cities fc, Cities tc, Flights f, Routes rt, Airlines a, 
		FlightBookings fb, FlightBookingSchedules fbs
	where 
		s.routeid = rt.routeid 
		and fc.cityid = rt.fromcityid 
		and tc.cityid = rt.tocityid 
		and s.flightid = f.flightid 
		and a.airlineid = f.airlineid 
		and fb.bookingid = fbs.bookingid			
		and fbs.scheduleid = s.scheduleid 
		and fb.dateofjourney=CONVERT(VARCHAR(10),GETDATE(),111)
*/

select 
		s.scheduleid , fc.cityname, tc.cityname, f.flightname, 
		a.airlinename, CONVERT(VARCHAR(10),s.departuretime,108) as 'DepartureTime', 
		CONVERT(VARCHAR(10),s.arrivaltime,108) as 'ArrivalTime', 
		s.durationinmins
	from 
		Schedules s, Cities fc, Cities tc, Flights f, Routes rt, Airlines a
	where 
		s.routeid = rt.routeid 
		and fc.cityid = rt.fromcityid 
		and tc.cityid = rt.tocityid 
		and s.flightid = f.flightid 
		and a.airlineid = f.airlineid 
		and s.IsActive = 1
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPassengerDetails]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <26th Jan, 2013>
-- Description:	<Procedure to add passenger to flight booking>
-- =============================================
CREATE PROCEDURE [dbo].[InsertPassengerDetails]
	-- Add the parameters for the stored procedure here
	@BookingID BIGINT,
	@UserOptions varchar(max)
AS
BEGIN
	DECLARE @PassengerName NVARCHAR(50)
	DECLARE @PassengerGender VARCHAR(5)
	DECLARE @PassengerDateOfBirth DATETIME

	DECLARE @String VARCHAR(max)
	
	DECLARE @Semicolon CHAR(1)
	DECLARE @SemicolonCheck VARCHAR(1)
	DECLARE @SemicolonPos INT
	DECLARE @SemicolonString VARCHAR(max)
	DECLARE @NextSemicolonPos INT

	SET @String = @UserOptions
	
	SET @Semicolon  = ';'
	SET @SemicolonCheck = right(@String,1) 
	
	DECLARE @DelimiterTab CHAR(1)
	DECLARE @TabCheck VARCHAR(1)
	DECLARE @TabPos INT
	DECLARE @TabString VARCHAR(MAX)
	DECLARE @NextTabPos INT
	--Initialize
	SET @DelimiterTab  = '|'

	--Check for semicolon, if not exists, INSERT
	IF (@SemicolonCheck <> @Semicolon )
 		SET @String = @String + @Semicolon
	 
	--Get position of first semicolon
	SET @SemicolonPos = charindex(@Semicolon,@String)
	SET @NextSemicolonPos = 1
	 
	--Loop while there is still a Tab in the String
	WHILE (@SemicolonPos <>  0)  
	BEGIN
 		SET @SemicolonString = substring(@String,1,@SemicolonPos - 1)
 		--Select @SemicolonString
 		--***********
 		SET @TabCheck = right(@SemicolonString,1)
	 	
 		--Check for trailing Pipe if not exists, INSERT
		IF (@TabCheck <> @DelimiterTab )
			SET @SemicolonString = @SemicolonString + @DelimiterTab
				
		--Get position of first tab
		SET @TabPos = charindex(@DelimiterTab,@SemicolonString)
		SET @NextTabPos = 1		
			
		--Loop while there is still a Tab in the String
		WHILE (@TabPos <>  0)  
		BEGIN
			--============================
			IF @NextTabPos = 1
		 		SET @PassengerName = substring(@SemicolonString,1,@TabPos - 1)
		 	ELSE IF @NextTabPos = 2
		 		SET @PassengerGender = substring(@SemicolonString,1,@TabPos - 1)
		 	ELSE IF @NextTabPos = 3
		 		SET @PassengerDateOfBirth = substring(@SemicolonString,1,@TabPos - 1)
		 	--===============
			SET @SemicolonString = substring(@SemicolonString,@TabPos + 1,len(@SemicolonString))
					
  			SET @NextTabPos = @NextTabPos + 1
  			SET @TabPos= charindex(@DelimiterTab,@SemicolonString)
					
		END

		INSERT INTO Passengers
			VALUES(@BookingID,@PassengerName,@PassengerGender,@PassengerDateOfBirth)

		SET @String = substring(@String,@SemicolonPos + 1,len(@String))	
		SET @NextSemicolonPos = @NextSemicolonPos + 1
		SET @SemicolonPos= charindex(@Semicolon,@String)	
	end
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSchedule]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSchedule]
	-- Add the parameters for the stored procedure here
	@scheduleid int,@flightid int,@routeid int,@departuretime DATETIME,
	@arrivaltime DATETIME,@durationinmins int,@isactive bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Schedules set FlightId = @flightid,RouteId = @routeid,DepartureTime = @departuretime,ArrivalTime = @arrivaltime,DurationInMins = @durationinmins,IsActive = @isactive where ScheduleId = @scheduleid
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlightCost]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFlightCost]
	-- Add the parameters for the stored procedure here
	@scheduleid int,@classid int,@cost decimal(18,2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update FlightCosts set CostPerTicket = @cost where ScheduleId = @scheduleid and ClassId = @classid
END
GO
/****** Object:  StoredProcedure [dbo].[InsertFlightTicketSchedule]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <26th Jan, 2013>
-- Description:	<Procedure to add flight booking schedules>
-- =============================================
CREATE PROCEDURE [dbo].[InsertFlightTicketSchedule]
	-- Add the parameters for the stored procedure here
	@BookingId BIGINT,
	@ScheduleId BIGINT,
	@CostPerTicket DECIMAL	
AS
BEGIN
	--Insert Into the Bookings Table
	INSERT INTO FlightBookingSchedules(BookingId,ScheduleId,CostPerTicket)
	VALUES(@BookingId, @ScheduleId, @CostPerTicket)

	
END
GO
/****** Object:  StoredProcedure [dbo].[GetTravelInventoryDetails]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Srikanth Reddy E
-- Create date: 9th June, 2013
-- Description:	Method to get travel inventory
-- =============================================
CREATE PROCEDURE [dbo].[GetTravelInventoryDetails]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT 
		s.scheduleid , fc.cityname, tc.cityname, f.flightname, 
		a.airlinename, CONVERT(VARCHAR(10),s.departuretime,108) as 'DepartureTime', 
		CONVERT(VARCHAR(10),s.arrivaltime,108) as 'ArrivalTime', 
		s.durationinmins
	FROM 
		Schedules s, Cities fc, Cities tc, Flights f, Routes rt, Airlines a
	WHERE 
		s.routeid = rt.routeid 
		and fc.cityid = rt.fromcityid 
		and tc.cityid = rt.tocityid 
		and s.flightid = f.flightid 
		and a.airlineid = f.airlineid 
		and s.IsActive = 1
		
		
    SELECT s.ScheduleId, cls.classtype, fc.noofseats, fc.classid 
	FROM classes cls, flightclasses fc, schedules s
	WHERE fc.classid = cls.classid and s.flightid=fc.flightid and s.IsActive = 1
	
	
    SELECT 
		max(s.ScheduleId) as "ScheduleId", max(fb.classid) as "classid", sum(fb.noofseats) as 'TotalBookings' 
    FROM 
		flightbookings fb, flightbookingschedules fbs, Bookings b, schedules s 
	WHERE
		fb.bookingid = fbs.bookingid 
		and fb.bookingid = b.BookingId 
		and fbs.ScheduleId = s.ScheduleId 
		and fb.dateofjourney=CONVERT(VARCHAR(10),GETDATE(),111) 
		and b.IsCanceled=0
		and s.IsActive = 1
	GROUP BY
		s.ScheduleId, fb.classid
END
GO
/****** Object:  StoredProcedure [dbo].[GetSeatBookingsForScheduleAndClassID]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Amloorp Anand
-- Create date: 29th April, 2013
-- Description:    SP to get seat bookings for schedule and class ID
-- =============================================
CREATE PROCEDURE [dbo].[GetSeatBookingsForScheduleAndClassID]
    -- Add the parameters for the stored procedure here
    @scheduleid int,
    @classid int
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    select sum(fb.noofseats) as 'TotalBookings' from flightbookings fb, flightbookingschedules fbs, Bookings b 
	where fb.bookingid = fbs.bookingid and fb.bookingid = b.BookingId and 
	fb.dateofjourney=CONVERT(VARCHAR(10),GETDATE(),111) and
	fb.classid=@classid and
	fbs.scheduleid=@scheduleid and 
	b.IsCanceled=0
END
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlightsAndCosts]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Srikanth Reddy
-- Create date: 06/08/2013
-- Description:	Get scheduled flights
-- =============================================
CREATE PROCEDURE [dbo].[GetScheduleFlightsAndCosts]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT dbo.Schedules.ScheduleId,dbo.Schedules.RouteId,t.CityId "ToId",t.CityName "ToCity",f.CityId "FromId",f.CityName "FromCity",DepartureTime,ArrivalTime,DistanceInKms,DurationInMins,dbo.Flights.AirlineId,AirlineName,dbo.Schedules.FlightId,FlightName,Status 
	FROM dbo.Schedules join dbo.Routes ON dbo.Schedules.RouteId = dbo.Routes.RouteId 
	JOIN dbo.Cities f ON dbo.Routes.FromCityId = f.CityId 
	JOIN dbo.Cities t on dbo.Routes.ToCityId = t.CityId 
	JOIN dbo.Flights ON dbo.Schedules.FlightId = dbo.Flights.FlightId 
	JOIN dbo.Airlines ON dbo.Flights.AirlineId = dbo.Airlines.AirlineId
	
	SELECT dbo.Schedules.ScheduleId,dbo.Classes.ClassId,ClassType,CostPerTicket 
	FROM dbo.FlightCosts 
	JOIN dbo.Schedules ON dbo.Schedules.ScheduleId = dbo.FlightCosts.ScheduleId
	JOIN dbo.Classes ON dbo.Classes.ClassId = dbo.FlightCosts.ClassId 
END
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlightCost]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetScheduleFlightCost]
	-- Add the parameters for the stored procedure here
	@scheduleid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select dbo.Classes.ClassId,ClassType,CostPerTicket from dbo.FlightCosts join dbo.Schedules
on  dbo.Schedules.ScheduleId = dbo.FlightCosts.ScheduleId
join dbo.Classes on dbo.Classes.ClassId = 
dbo.FlightCosts.ClassId where dbo.Schedules.ScheduleId = @scheduleid;
END
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlightAndCosts]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Srikanth Reddy
-- Create date: 06/08/2013
-- Description:	Get scheduled flight by id
-- =============================================
CREATE PROCEDURE [dbo].[GetScheduleFlightAndCosts]
	-- Add the parameters for the stored procedure here
	@scheduleid int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT dbo.Schedules.ScheduleId,dbo.Schedules.RouteId,t.CityId "FromId",t.CityName "FromCity",f.CityId "ToId",f.CityName "ToCity",DepartureTime,ArrivalTime,DistanceInKms,DurationInMins,dbo.Flights.AirlineId,AirlineName,dbo.Schedules.FlightId,FlightName,schedules.IsActive as "Status"
	FROM dbo.Schedules 
	JOIN dbo.Routes ON dbo.Schedules.RouteId = dbo.Routes.RouteId 
	JOIN dbo.Cities f ON dbo.Routes.FromCityId = f.CityId 
	JOIN dbo.Cities t ON dbo.Routes.ToCityId = t.CityId 
	JOIN dbo.Flights ON dbo.Schedules.FlightId = dbo.Flights.FlightId 
	JOIN dbo.Airlines ON dbo.Flights.AirlineId = dbo.Airlines.AirlineId
	WHERE dbo.Schedules.ScheduleId = @scheduleid
	
	SELECT dbo.Classes.ClassId,ClassType,CostPerTicket 
	FROM dbo.FlightCosts 
	JOIN dbo.Schedules ON dbo.Schedules.ScheduleId = dbo.FlightCosts.ScheduleId
	JOIN dbo.Classes on dbo.Classes.ClassId = dbo.FlightCosts.ClassId 
	WHERE dbo.Schedules.ScheduleId = @scheduleid;
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlightSchedules]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Jan 25th,2013>
-- Description:	<Procedure to get all the connecting flights for the given search conditions>
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightSchedules] 
	-- Add the parameters for the stored procedure here
	@FromCityId int, 
	@ToCityId int,
	@ClassId int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Select
		f.FlightId, f.FlightName,
		a.AirlineId, a.AirlineName, a.AirlineCode, a.AirlineLogo,
		s.ScheduleId, s.DepartureTime, s.ArrivalTime, s.DurationInMins,
		s.IsActive, 
		r.DistanceInKms,
		fc.ClassId, fc.CostPerTicket,
		fromC.CityId as FromCityId, fromC.CityName as FromCityName,
		toC.CityId as ToCityId, toC.CityName as ToCityName,
		fcl.NoOfSeats
	From
		Schedules s, Flights f, Airlines a, [Routes] r, FlightCosts fc,
		Cities fromC, Cities toC, FlightClasses fcl
	Where
		s.RouteId = r.RouteId
		and r.FromCityId = @FromCityId
		and s.IsActive = 1
		and r.FromCityId = fromC.CityId
		and r.ToCityId = toC.CityId
		and s.FlightId = f.FlightId
		and f.AirlineId = a.AirlineId
		and s.ScheduleId = fc.ScheduleId
		and fc.ClassId = @ClassId
		and f.FlightId = fcl.FlightId
		and fcl.ClassId = @ClassId
		--and CONVERT(varchar(20), s.DepartureTime, 108) >= convert(varchar(20), GETDATE(), 108)
		-- to normalize the time to IST as the server is hosted in US
		-- and datediff(hour, getdate(), s.DepartureTime) < 1
		-- and datediff(hour, dateadd(minute, -30, dateadd(hour, -12, getdate())), s.DepartureTime) > 1
		
	UNION
	
	Select
		f.FlightId, f.FlightName,
		a.AirlineId, a.AirlineName, a.AirlineCode, a.AirlineLogo,
		s.ScheduleId, s.DepartureTime, s.ArrivalTime, s.DurationInMins,
		s.IsActive, 
		r.DistanceInKms,
		fc.ClassId, fc.CostPerTicket,
		fromC.CityId as FromCityId, fromC.CityName as FromCityName,
		toC.CityId as ToCityId, toC.CityName as ToCityName,
		fcl.NoOfSeats
	From
		Schedules s, Flights f, Airlines a, [Routes] r, FlightCosts fc,
		Cities fromC, Cities toC, FlightClasses fcl
	Where
		s.RouteId = r.RouteId
		and r.ToCityId = @ToCityId
		and s.IsActive = 1
		and r.FromCityId = fromC.CityId
		and r.ToCityId = toC.CityId
		and s.FlightId = f.FlightId
		and f.AirlineId = a.AirlineId
		and s.ScheduleId = fc.ScheduleId
		and fc.ClassId = @ClassId	
		and f.FlightId = fcl.FlightId
		and fcl.ClassId = @ClassId
		--and CONVERT(varchar(20), s.DepartureTime, 108) >= convert(varchar(20), GETDATE(), 108)
		-- to normalize the time to IST as the server is hosted in US
		-- and datediff(hour, getdate(), s.DepartureTime) < 1
		-- and datediff(hour, dateadd(minute, -30, dateadd(hour, -12, getdate())), s.DepartureTime) > 1
	Order By
		fc.CostPerTicket Desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlightBookingByBookingReferenceNo]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Krishna Kumar S>
-- Create date: <April 27th,2013>
-- Description:    <Procedure to get booking details for a given booking reference number>
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightBookingByBookingReferenceNo]
    -- Add the parameters for the stored procedure here
    @BookingReferenceNo nvarchar(50),
    @CurrentUserId uniqueidentifier,
    @IsCancelAvailable bit output
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
   
    SET @IsCancelAvailable = (SELECT IsCanceled From Bookings Where BookingReferenceNo = @BookingReferenceNo);

    IF(@IsCancelAvailable = 0)
    BEGIN
        SET @IsCancelAvailable = 1
       
        Select
            b.BookingId, b.BookingDate, b.BookingReferenceNo,
            b.Remarks, b.TotalCost, b.IsCanceled,
            fb.ClassId, fb.DateOfJourney, fb.NoOfSeats,
            fbs.ScheduleId, fbs.CostPerTicket,
            s.ScheduleId, s.DepartureTime, s.ArrivalTime, s.DurationInMins,
            f.FlightId, f.FlightName,
            a.AirlineId, a.AirlineName, a.AirlineCode, a.AirlineLogo,
            r.DistanceInKms,
            fromC.CityId as FromCityId, fromC.CityName as FromCityName,
            toC.CityId as ToCityId, toC.CityName as ToCityName,
            fcl.NoOfSeats, cl.ClassType
        From
            Bookings b, FlightBookings fb, FlightBookingSchedules fbs,
            Schedules s, Flights f, Airlines a, [Routes] r,
            Cities fromC, Cities toC, FlightClasses fcl, Classes cl, UserBookings ub
        Where
            b.BookingReferenceNo = @BookingReferenceNo
            and ub.UserId = @CurrentUserId
            and b.BookingId = fb.BookingId
            and fb.BookingId = fbs.BookingId
            and fbs.ScheduleId = s.ScheduleId
            and s.RouteId = r.RouteId
            and r.FromCityId = fromC.CityId
            and r.ToCityId = toC.CityId
            and s.FlightId = f.FlightId
            and f.AirlineId = a.AirlineId
            and f.FlightId = fcl.FlightId
            and fcl.ClassId = fb.ClassId
            and fcl.ClassId = cl.ClassId
            and b.BookingId = ub.BookingId
    END
    ELSE
    BEGIN
        SET @IsCancelAvailable = 0
    END
END
GO
/****** Object:  StoredProcedure [dbo].[BookFlightTicket]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <26th Jan, 2013>
-- Description:	<Procedure to add flight booking>
-- =============================================
CREATE PROCEDURE [dbo].[BookFlightTicket]
	-- Add the parameters for the stored procedure here
	@TypeID INT,
	@DateOfJourney DATETIME,
	@NoOfSeats INT,
	@ClassID INT,
	@ContactName NVARCHAR(200),
	@Address NVARCHAR(500),
	@City NVARCHAR(100),
	@State NVARCHAR(100),
	@PinCode NVARCHAR(20),
	@Email NVARCHAR(100),
	@PhoneNo NVARCHAR(50),
	@MobileNo NVARCHAR(20),
	@PaymentRefernceNo NVARCHAR(50),
	@TotalCost DECIMAL,
	@Insurance DECIMAL,
	@PassengerDetails NVARCHAR(max),
	@BookingReferenceNumber nvarchar(100) out,
	@LastBookingID BIGINT out
	
	
AS
BEGIN
	DECLARE @Remarks NVARCHAR(200)
	DECLARE @IsCanceled BIT
	SET @Remarks='Booking Air Ticket'
	SET @IsCanceled= 0

	--Insert Into the Bookings Table
	INSERT INTO Bookings(TypeId,BookingDate,Remarks,TotalCost,IsCanceled)
	VALUES(@TypeID,GETDATE(),@Remarks,@TotalCost,@IsCanceled)
	SET @LastBookingID = SCOPE_IDENTITY();

	--Updating the Bookings Table
	SET @BookingReferenceNumber = 'HTRP' + convert(nvarchar(100), @LastBookingID)
	UPDATE Bookings SET BookingReferenceNo = @BookingReferenceNumber WHERE BookingId=@LastBookingID

	--Insert Into FlightBookings Table
	INSERT INTO FlightBookings(BookingId,DateOfJourney,NoOfSeats,ClassId)
	VALUES(@LastBookingID,@DateOfJourney,@NoOFSeats,@ClassID)

	--Insert Into Booking Contacts Table
	INSERT INTO BookingContacts (BookingId,ContactName,[Address],City,[State],PinCode,Email,PhoneNo,MobileNo)
	VALUES(@LastBookingID,@ContactName,@Address,@City,@State,@PinCode,@Email,@PhoneNo,@MobileNo)

	--Insert Into Booking Payments Table
	INSERT INTO BookingPayments(BookingId,PaymentDate,PaymentAmount,ReferenceNo)
	VALUES(@LastBookingID,GETDATE(),@TotalCost,@PaymentRefernceNo)

	IF(@Insurance != 0)
	BEGIN
		INSERT INTO FlightBookingInsurances(BookingId, Amount) 
		VALUES (@LastBookingID, @Insurance)
	END	
		
	--Insert into Passengers Details
	EXEC InsertPassengerDetails @LastBookingID,@PassengerDetails
END
GO
/****** Object:  StoredProcedure [dbo].[CheckAvailabilityOfSchedule]    Script Date: 07/29/2013 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Jan 25th, 2013>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckAvailabilityOfSchedule] 
	-- Add the parameters for the stored procedure here
	@ScheduleId bigint,
	@NoOfSeats int,
	@DateOfJourney datetime,
	@ClassId int,
	@IsAvailable bit out
AS
BEGIN
	Declare @TotalSeatsBooked INT
	Declare @TotalSeatsCapacity INT
	
	-- To get total number of seats booked
	Select
		@TotalSeatsBooked = (isnull(SUM(fb.NoOfSeats), 0))
	From
		Bookings b, FlightBookings fb, FlightBookingSchedules fbs, Schedules s, Flights f, 
		FlightClasses fc
	Where
		b.BookingId = fb.BookingId
		and fb.BookingId = fbs.BookingId
		and fbs.ScheduleId = s.ScheduleId 
		and s.FlightId = f.FlightId
		and f.FlightId = fc.FlightId	
		and fc.ClassId = @ClassId
		and s.ScheduleId = @ScheduleId
		and fb.DateOfJourney = @DateofJourney
		and b.IsCanceled = 0
	
	-- To get total number of seats for a given schedule
	Select
		@TotalSeatsCapacity = fc.NoOfSeats
	From
		Schedules s, Flights f, 
		FlightClasses fc
	Where
		s.ScheduleId = @ScheduleId
		and s.FlightId = f.FlightId
		and f.FlightId = fc.FlightId
		and fc.ClassId = @ClassId
		
	-- To check if seats are available	
	If((@TotalSeatsCapacity - @TotalSeatsBooked) >= @NoOfSeats)
		Set @IsAvailable = 1
	else 
		Set @IsAvailable = 0
	
		
END
GO
/****** Object:  ForeignKey [FK_travel_miles_redemption_travel_miles_redemption]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[travel_miles_redemption]  WITH CHECK ADD  CONSTRAINT [FK_travel_miles_redemption_travel_miles_redemption] FOREIGN KEY([travelmileid])
REFERENCES [dbo].[travel_miles] ([travelmileid])
GO
ALTER TABLE [dbo].[travel_miles_redemption] CHECK CONSTRAINT [FK_travel_miles_redemption_travel_miles_redemption]
GO
/****** Object:  ForeignKey [Relationship67]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [Relationship67] FOREIGN KEY([AirlineId])
REFERENCES [dbo].[Airlines] ([AirlineId])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [Relationship67]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__51300E55]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__51300E55] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__51300E55]
GO
/****** Object:  ForeignKey [Relationship77]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [Relationship77] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [Relationship77]
GO
/****** Object:  ForeignKey [Relationship88]    Script Date: 07/29/2013 09:48:08 ******/
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [Relationship88] FOREIGN KEY([TypeId])
REFERENCES [dbo].[BookingTypes] ([TypeId])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [Relationship88]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__4E53A1AA]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__4E53A1AA] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__4E53A1AA]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__5224328E]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__5224328E] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__5224328E]
GO
/****** Object:  ForeignKey [Relationship90]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingPayments]  WITH CHECK ADD  CONSTRAINT [Relationship90] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[BookingPayments] CHECK CONSTRAINT [Relationship90]
GO
/****** Object:  ForeignKey [Relationship78]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingContacts]  WITH CHECK ADD  CONSTRAINT [Relationship78] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[BookingContacts] CHECK CONSTRAINT [Relationship78]
GO
/****** Object:  ForeignKey [Relationship89]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[BookingCancelations]  WITH CHECK ADD  CONSTRAINT [Relationship89] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[BookingCancelations] CHECK CONSTRAINT [Relationship89]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__607251E5]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__607251E5] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__607251E5]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__6166761E]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__6166761E] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__6166761E]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__55F4C372]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__55F4C372] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__55F4C372]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__56E8E7AB]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__56E8E7AB] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__56E8E7AB]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__531856C7]    Script Date: 07/29/2013 09:48:09 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__531856C7] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__531856C7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__540C7B00]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__540C7B00] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__540C7B00]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__55009F39]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__55009F39] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__55009F39]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__5F7E2DAC]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__5F7E2DAC] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__5F7E2DAC]
GO
/****** Object:  ForeignKey [Relationship81]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightClasses]  WITH CHECK ADD  CONSTRAINT [Relationship81] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights] ([FlightId])
GO
ALTER TABLE [dbo].[FlightClasses] CHECK CONSTRAINT [Relationship81]
GO
/****** Object:  ForeignKey [Relationship82]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightClasses]  WITH CHECK ADD  CONSTRAINT [Relationship82] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[FlightClasses] CHECK CONSTRAINT [Relationship82]
GO
/****** Object:  ForeignKey [Relationship73]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookings]  WITH CHECK ADD  CONSTRAINT [Relationship73] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[FlightBookings] CHECK CONSTRAINT [Relationship73]
GO
/****** Object:  ForeignKey [Relationship85]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookings]  WITH CHECK ADD  CONSTRAINT [Relationship85] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[FlightBookings] CHECK CONSTRAINT [Relationship85]
GO
/****** Object:  ForeignKey [FK_FlightBookingInsurances_Bookings]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[FlightBookingInsurances]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookingInsurances_Bookings] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[FlightBookingInsurances] CHECK CONSTRAINT [FK_FlightBookingInsurances_Bookings]
GO
/****** Object:  ForeignKey [Relationship68]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Routes]  WITH CHECK ADD  CONSTRAINT [Relationship68] FOREIGN KEY([FromCityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Routes] CHECK CONSTRAINT [Relationship68]
GO
/****** Object:  ForeignKey [Relationship69]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Routes]  WITH CHECK ADD  CONSTRAINT [Relationship69] FOREIGN KEY([ToCityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Routes] CHECK CONSTRAINT [Relationship69]
GO
/****** Object:  ForeignKey [Relationship96]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [Relationship96] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [Relationship96]
GO
/****** Object:  ForeignKey [Relationship86]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[UserBookings]  WITH CHECK ADD  CONSTRAINT [Relationship86] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[UserBookings] CHECK CONSTRAINT [Relationship86]
GO
/****** Object:  ForeignKey [Relationship87]    Script Date: 07/29/2013 09:48:10 ******/
ALTER TABLE [dbo].[UserBookings]  WITH CHECK ADD  CONSTRAINT [Relationship87] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserBookings] CHECK CONSTRAINT [Relationship87]
GO
/****** Object:  ForeignKey [Relationship70]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Relationship70] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights] ([FlightId])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Relationship70]
GO
/****** Object:  ForeignKey [Relationship71]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Relationship71] FOREIGN KEY([RouteId])
REFERENCES [dbo].[Routes] ([RouteId])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Relationship71]
GO
/****** Object:  ForeignKey [Relationship92]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [Relationship92] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([HotelId])
GO
ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [Relationship92]
GO
/****** Object:  ForeignKey [Relationship93]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [Relationship93] FOREIGN KEY([TypeId])
REFERENCES [dbo].[RoomTypes] ([TypeId])
GO
ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [Relationship93]
GO
/****** Object:  ForeignKey [FK__HotelRevi__Hotel__6AEFE058]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelReviews]  WITH CHECK ADD  CONSTRAINT [FK__HotelRevi__Hotel__6AEFE058] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([HotelId])
GO
ALTER TABLE [dbo].[HotelReviews] CHECK CONSTRAINT [FK__HotelRevi__Hotel__6AEFE058]
GO
/****** Object:  ForeignKey [FK__HotelRevi__Revie__6BE40491]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelReviews]  WITH CHECK ADD  CONSTRAINT [FK__HotelRevi__Revie__6BE40491] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Reviews] ([ReviewId])
GO
ALTER TABLE [dbo].[HotelReviews] CHECK CONSTRAINT [FK__HotelRevi__Revie__6BE40491]
GO
/****** Object:  ForeignKey [FK__HotelRevi__UserI__6CD828CA]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelReviews]  WITH CHECK ADD  CONSTRAINT [FK__HotelRevi__UserI__6CD828CA] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[HotelReviews] CHECK CONSTRAINT [FK__HotelRevi__UserI__6CD828CA]
GO
/****** Object:  ForeignKey [HotelId]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelBookings]  WITH NOCHECK ADD  CONSTRAINT [HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([HotelId])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[HotelBookings] CHECK CONSTRAINT [HotelId]
GO
/****** Object:  ForeignKey [Relationship74]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[HotelBookings]  WITH CHECK ADD  CONSTRAINT [Relationship74] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[HotelBookings] CHECK CONSTRAINT [Relationship74]
GO
/****** Object:  ForeignKey [Relationship79]    Script Date: 07/29/2013 09:48:11 ******/
ALTER TABLE [dbo].[Passengers]  WITH CHECK ADD  CONSTRAINT [Relationship79] FOREIGN KEY([BookingId])
REFERENCES [dbo].[FlightBookings] ([BookingId])
GO
ALTER TABLE [dbo].[Passengers] CHECK CONSTRAINT [Relationship79]
GO
/****** Object:  ForeignKey [FK_FlightBookingSchedules_FlightBookings]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightBookingSchedules]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookingSchedules_FlightBookings] FOREIGN KEY([BookingId])
REFERENCES [dbo].[FlightBookings] ([BookingId])
GO
ALTER TABLE [dbo].[FlightBookingSchedules] CHECK CONSTRAINT [FK_FlightBookingSchedules_FlightBookings]
GO
/****** Object:  ForeignKey [FK_FlightBookingSchedules_Schedules]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightBookingSchedules]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookingSchedules_Schedules] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
GO
ALTER TABLE [dbo].[FlightBookingSchedules] CHECK CONSTRAINT [FK_FlightBookingSchedules_Schedules]
GO
/****** Object:  ForeignKey [Relationship83]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightCosts]  WITH CHECK ADD  CONSTRAINT [Relationship83] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
GO
ALTER TABLE [dbo].[FlightCosts] CHECK CONSTRAINT [Relationship83]
GO
/****** Object:  ForeignKey [Relationship84]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[FlightCosts]  WITH CHECK ADD  CONSTRAINT [Relationship84] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[FlightCosts] CHECK CONSTRAINT [Relationship84]
GO
/****** Object:  ForeignKey [Booking]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[HotelBookingRooms]  WITH NOCHECK ADD  CONSTRAINT [Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[HotelBookings] ([BookingId])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[HotelBookingRooms] CHECK CONSTRAINT [Booking]
GO
/****** Object:  ForeignKey [RoomType]    Script Date: 07/29/2013 09:48:12 ******/
ALTER TABLE [dbo].[HotelBookingRooms]  WITH NOCHECK ADD  CONSTRAINT [RoomType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[RoomTypes] ([TypeId])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[HotelBookingRooms] CHECK CONSTRAINT [RoomType]
GO
