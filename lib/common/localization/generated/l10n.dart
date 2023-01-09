// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The connection has timed out. Please try again`
  String get connectionTimedOut {
    return Intl.message(
      'The connection has timed out. Please try again',
      name: 'connectionTimedOut',
      desc: '',
      args: [],
    );
  }

  /// `There are some problems with the connection.\nPlease try again`
  String get connectionProblem {
    return Intl.message(
      'There are some problems with the connection.\nPlease try again',
      name: 'connectionProblem',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalidCredentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Response is null`
  String get responseNull {
    return Intl.message(
      'Response is null',
      name: 'responseNull',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalid_credentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalid_credentials',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connect timeout`
  String get connect_timeout {
    return Intl.message(
      'Connect timeout',
      name: 'connect_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Receive timeout`
  String get receive_timeout {
    return Intl.message(
      'Receive timeout',
      name: 'receive_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Send timeout`
  String get send_timeout {
    return Intl.message(
      'Send timeout',
      name: 'send_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Connection problem`
  String get connection_problem {
    return Intl.message(
      'Connection problem',
      name: 'connection_problem',
      desc: '',
      args: [],
    );
  }

  /// `Please check internet connection`
  String get please_check_internet_connection {
    return Intl.message(
      'Please check internet connection',
      name: 'please_check_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Server error.`
  String get server_error {
    return Intl.message(
      'Server error.',
      name: 'server_error',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get unknown_error {
    return Intl.message(
      'Unknown error',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Server unknown error`
  String get server_unknown_error {
    return Intl.message(
      'Server unknown error',
      name: 'server_unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Server not found`
  String get server_not_found {
    return Intl.message(
      'Server not found',
      name: 'server_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Database exception`
  String get database_exception {
    return Intl.message(
      'Database exception',
      name: 'database_exception',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get seeAll {
    return Intl.message(
      'See all',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Email or Username`
  String get emailOrUserName {
    return Intl.message(
      'Email or Username',
      name: 'emailOrUserName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Email address is invalid`
  String get invalidEmail {
    return Intl.message(
      'Email address is invalid',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please follow the password requirements below`
  String get invalidPassword {
    return Intl.message(
      'Please follow the password requirements below',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Username is Required`
  String get usernameIsRequired {
    return Intl.message(
      'Username is Required',
      name: 'usernameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `FirstName is Required`
  String get firstNameIsRequired {
    return Intl.message(
      'FirstName is Required',
      name: 'firstNameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `LastName is Required`
  String get lastNameIsRequired {
    return Intl.message(
      'LastName is Required',
      name: 'lastNameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Email required`
  String get emailRequired {
    return Intl.message(
      'Email required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password required`
  String get passwordRequired {
    return Intl.message(
      'Password required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Social`
  String get social {
    return Intl.message(
      'Social',
      name: 'social',
      desc: '',
      args: [],
    );
  }

  /// `Game Page`
  String get gamePage {
    return Intl.message(
      'Game Page',
      name: 'gamePage',
      desc: '',
      args: [],
    );
  }

  /// `Top Players Empty`
  String get topPlayersEmpty {
    return Intl.message(
      'Top Players Empty',
      name: 'topPlayersEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `baseshop`
  String get baseshop {
    return Intl.message(
      'baseshop',
      name: 'baseshop',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get feed {
    return Intl.message(
      'Feed',
      name: 'feed',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Friends`
  String get friends {
    return Intl.message(
      'Friends',
      name: 'friends',
      desc: '',
      args: [],
    );
  }

  /// `Groups`
  String get groups {
    return Intl.message(
      'Groups',
      name: 'groups',
      desc: '',
      args: [],
    );
  }

  /// `Games`
  String get games {
    return Intl.message(
      'Games',
      name: 'games',
      desc: '',
      args: [],
    );
  }

  /// `Action`
  String get action {
    return Intl.message(
      'Action',
      name: 'action',
      desc: '',
      args: [],
    );
  }

  /// `Arcade`
  String get arcade {
    return Intl.message(
      'Arcade',
      name: 'arcade',
      desc: '',
      args: [],
    );
  }

  /// `Board`
  String get board {
    return Intl.message(
      'Board',
      name: 'board',
      desc: '',
      args: [],
    );
  }

  /// `Tournaments`
  String get tournaments {
    return Intl.message(
      'Tournaments',
      name: 'tournaments',
      desc: '',
      args: [],
    );
  }

  /// `Reward`
  String get reward {
    return Intl.message(
      'Reward',
      name: 'reward',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get system {
    return Intl.message(
      'System',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `Favourites`
  String get favourites {
    return Intl.message(
      'Favourites',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  /// `All Your Favourite games`
  String get favouritesDesc {
    return Intl.message(
      'All Your Favourite games',
      name: 'favouritesDesc',
      desc: '',
      args: [],
    );
  }

  /// `Resume Playing`
  String get resumePlaying {
    return Intl.message(
      'Resume Playing',
      name: 'resumePlaying',
      desc: '',
      args: [],
    );
  }

  /// `Fast-paced game`
  String get fastPacedGame {
    return Intl.message(
      'Fast-paced game',
      name: 'fastPacedGame',
      desc: '',
      args: [],
    );
  }

  /// `Games with board`
  String get gamesWithBoard {
    return Intl.message(
      'Games with board',
      name: 'gamesWithBoard',
      desc: '',
      args: [],
    );
  }

  /// `Games that focuses on hand–eye coordination and reaction-time`
  String get gameReactionTime {
    return Intl.message(
      'Games that focuses on hand–eye coordination and reaction-time',
      name: 'gameReactionTime',
      desc: '',
      args: [],
    );
  }

  /// `Continue from where you left off`
  String get resumePlayingDesc {
    return Intl.message(
      'Continue from where you left off',
      name: 'resumePlayingDesc',
      desc: '',
      args: [],
    );
  }

  /// `Games For You`
  String get gamesForYou {
    return Intl.message(
      'Games For You',
      name: 'gamesForYou',
      desc: '',
      args: [],
    );
  }

  /// `games you might be interested in`
  String get gamesForYouDesc {
    return Intl.message(
      'games you might be interested in',
      name: 'gamesForYouDesc',
      desc: '',
      args: [],
    );
  }

  /// `Find More Games`
  String get findMoreGames {
    return Intl.message(
      'Find More Games',
      name: 'findMoreGames',
      desc: '',
      args: [],
    );
  }

  /// `Currently ongoing Tournaments`
  String get currentlyOngoingTournaments {
    return Intl.message(
      'Currently ongoing Tournaments',
      name: 'currentlyOngoingTournaments',
      desc: '',
      args: [],
    );
  }

  /// `Find More Tournaments`
  String get findMoreTournaments {
    return Intl.message(
      'Find More Tournaments',
      name: 'findMoreTournaments',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed Password`
  String get confirmedPassWord {
    return Intl.message(
      'Confirmed Password',
      name: 'confirmedPassWord',
      desc: '',
      args: [],
    );
  }

  /// `Whitespace not allowed`
  String get whitespaceNotAllow {
    return Intl.message(
      'Whitespace not allowed',
      name: 'whitespaceNotAllow',
      desc: '',
      args: [],
    );
  }

  /// `Username must be between 6 and 32 characters`
  String get atLeast6Characters {
    return Intl.message(
      'Username must be between 6 and 32 characters',
      name: 'atLeast6Characters',
      desc: '',
      args: [],
    );
  }

  /// `FirstName must be between 6 and 32 characters`
  String get firstNameAtLeast6Characters {
    return Intl.message(
      'FirstName must be between 6 and 32 characters',
      name: 'firstNameAtLeast6Characters',
      desc: '',
      args: [],
    );
  }

  /// `LastName must be between 6 and 32 characters`
  String get lastNameAtLeast6Characters {
    return Intl.message(
      'LastName must be between 6 and 32 characters',
      name: 'lastNameAtLeast6Characters',
      desc: '',
      args: [],
    );
  }

  /// `User name already exists !`
  String get usernameAlreadyExists {
    return Intl.message(
      'User name already exists !',
      name: 'usernameAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters`
  String get passwordValidLength {
    return Intl.message(
      'At least 8 characters',
      name: 'passwordValidLength',
      desc: '',
      args: [],
    );
  }

  /// `Lowercase`
  String get PasswordLowerCase {
    return Intl.message(
      'Lowercase',
      name: 'PasswordLowerCase',
      desc: '',
      args: [],
    );
  }

  /// `Uppercase`
  String get PasswordUpperCase {
    return Intl.message(
      'Uppercase',
      name: 'PasswordUpperCase',
      desc: '',
      args: [],
    );
  }

  /// `A Number`
  String get PasswordNumber {
    return Intl.message(
      'A Number',
      name: 'PasswordNumber',
      desc: '',
      args: [],
    );
  }

  /// `A Symbol`
  String get PasswordSymbols {
    return Intl.message(
      'A Symbol',
      name: 'PasswordSymbols',
      desc: '',
      args: [],
    );
  }

  /// `I aggree with the`
  String get IAggreeWith {
    return Intl.message(
      'I aggree with the',
      name: 'IAggreeWith',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get TermsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'TermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password does not match`
  String get PasswordDontMatch {
    return Intl.message(
      'Confirm password does not match',
      name: 'PasswordDontMatch',
      desc: '',
      args: [],
    );
  }

  /// `camera`
  String get Camera {
    return Intl.message(
      'camera',
      name: 'Camera',
      desc: '',
      args: [],
    );
  }

  /// `gallery`
  String get Gallery {
    return Intl.message(
      'gallery',
      name: 'Gallery',
      desc: '',
      args: [],
    );
  }

  /// `close`
  String get Close {
    return Intl.message(
      'close',
      name: 'Close',
      desc: '',
      args: [],
    );
  }

  /// `Email already exists !`
  String get EmailAlreadyExists {
    return Intl.message(
      'Email already exists !',
      name: 'EmailAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `join`
  String get join {
    return Intl.message(
      'join',
      name: 'join',
      desc: '',
      args: [],
    );
  }

  /// `Ends in:`
  String get endIs {
    return Intl.message(
      'Ends in:',
      name: 'endIs',
      desc: '',
      args: [],
    );
  }

  /// `1st Prize`
  String get firstPrize {
    return Intl.message(
      '1st Prize',
      name: 'firstPrize',
      desc: '',
      args: [],
    );
  }

  /// `Gems`
  String get gems {
    return Intl.message(
      'Gems',
      name: 'gems',
      desc: '',
      args: [],
    );
  }

  /// `Coins`
  String get coins {
    return Intl.message(
      'Coins',
      name: 'coins',
      desc: '',
      args: [],
    );
  }

  /// `Target`
  String get target {
    return Intl.message(
      'Target',
      name: 'target',
      desc: '',
      args: [],
    );
  }

  /// `Highest`
  String get highest {
    return Intl.message(
      'Highest',
      name: 'highest',
      desc: '',
      args: [],
    );
  }

  /// `Claim!`
  String get claim {
    return Intl.message(
      'Claim!',
      name: 'claim',
      desc: '',
      args: [],
    );
  }

  /// `go >>`
  String get go {
    return Intl.message(
      'go >>',
      name: 'go',
      desc: '',
      args: [],
    );
  }

  /// `Invite New Friends`
  String get inviteNewFriends {
    return Intl.message(
      'Invite New Friends',
      name: 'inviteNewFriends',
      desc: '',
      args: [],
    );
  }

  /// `More people, more PRIZES!`
  String get inviteNewFriendsDesc {
    return Intl.message(
      'More people, more PRIZES!',
      name: 'inviteNewFriendsDesc',
      desc: '',
      args: [],
    );
  }

  /// `Invite`
  String get invite {
    return Intl.message(
      'Invite',
      name: 'invite',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Complete all Daily Tasks`
  String get completeAllDailyTasks {
    return Intl.message(
      'Complete all Daily Tasks',
      name: 'completeAllDailyTasks',
      desc: '',
      args: [],
    );
  }

  /// `Play any 5 Games`
  String get playAny5Games {
    return Intl.message(
      'Play any 5 Games',
      name: 'playAny5Games',
      desc: '',
      args: [],
    );
  }

  /// `Play in 1 Tournament`
  String get playIn1Tournament {
    return Intl.message(
      'Play in 1 Tournament',
      name: 'playIn1Tournament',
      desc: '',
      args: [],
    );
  }

  /// `Challenge 3 People to Coin Matches`
  String get challenge3PeopleToCoinMatches {
    return Intl.message(
      'Challenge 3 People to Coin Matches',
      name: 'challenge3PeopleToCoinMatches',
      desc: '',
      args: [],
    );
  }

  /// `Win at 3 Coin Matches`
  String get winAt3CoinMatches {
    return Intl.message(
      'Win at 3 Coin Matches',
      name: 'winAt3CoinMatches',
      desc: '',
      args: [],
    );
  }

  /// `Refresh in:`
  String get refreshIn {
    return Intl.message(
      'Refresh in:',
      name: 'refreshIn',
      desc: '',
      args: [],
    );
  }

  /// `Daily Login Rewards`
  String get dailyLoginRewards {
    return Intl.message(
      'Daily Login Rewards',
      name: 'dailyLoginRewards',
      desc: '',
      args: [],
    );
  }

  /// `Tournament End`
  String get tournamentEnd {
    return Intl.message(
      'Tournament End',
      name: 'tournamentEnd',
      desc: '',
      args: [],
    );
  }

  /// `Tournament Performance`
  String get tournamentPerformance {
    return Intl.message(
      'Tournament Performance',
      name: 'tournamentPerformance',
      desc: '',
      args: [],
    );
  }

  /// `Tournament Rank Change Notification`
  String get tournamentRankChangeNotification {
    return Intl.message(
      'Tournament Rank Change Notification',
      name: 'tournamentRankChangeNotification',
      desc: '',
      args: [],
    );
  }

  /// `System Announcements`
  String get systemAnnouncements {
    return Intl.message(
      'System Announcements',
      name: 'systemAnnouncements',
      desc: '',
      args: [],
    );
  }

  /// `GM Compensation`
  String get gMCompensation {
    return Intl.message(
      'GM Compensation',
      name: 'gMCompensation',
      desc: '',
      args: [],
    );
  }

  /// `Tournament Cancelled`
  String get tournamentCancelled {
    return Intl.message(
      'Tournament Cancelled',
      name: 'tournamentCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Tournament Reward`
  String get tournamentReward {
    return Intl.message(
      'Tournament Reward',
      name: 'tournamentReward',
      desc: '',
      args: [],
    );
  }

  /// `Refund`
  String get refund {
    return Intl.message(
      'Refund',
      name: 'refund',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message(
      'Day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Verification email sent!`
  String get verificationEmailSent {
    return Intl.message(
      'Verification email sent!',
      name: 'verificationEmailSent',
      desc: '',
      args: [],
    );
  }

  /// `A verification email has been sent to your email address. The verification link will expire in:`
  String get verificationEmailSentContent {
    return Intl.message(
      'A verification email has been sent to your email address. The verification link will expire in:',
      name: 'verificationEmailSentContent',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t receive or the link has expired?`
  String get didNotReceiveLink {
    return Intl.message(
      'Didn’t receive or the link has expired?',
      name: 'didNotReceiveLink',
      desc: '',
      args: [],
    );
  }

  /// `Resend verification`
  String get resendVerification {
    return Intl.message(
      'Resend verification',
      name: 'resendVerification',
      desc: '',
      args: [],
    );
  }

  /// `RESEND CODE`
  String get resendCode {
    return Intl.message(
      'RESEND CODE',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Your code will expire in`
  String get yourCodeWillExpireIn {
    return Intl.message(
      'Your code will expire in',
      name: 'yourCodeWillExpireIn',
      desc: '',
      args: [],
    );
  }

  /// `Your code has expired`
  String get yourCodeHasExpired {
    return Intl.message(
      'Your code has expired',
      name: 'yourCodeHasExpired',
      desc: '',
      args: [],
    );
  }

  /// `Continued`
  String get continued {
    return Intl.message(
      'Continued',
      name: 'continued',
      desc: '',
      args: [],
    );
  }

  /// `Back to Sign In`
  String get backToSignIn {
    return Intl.message(
      'Back to Sign In',
      name: 'backToSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Back to Go Shop`
  String get backTobaseshop {
    return Intl.message(
      'Back to Go Shop',
      name: 'backTobaseshop',
      desc: '',
      args: [],
    );
  }

  /// `Your account is not verified!`
  String get yourAccountIsNotVerified {
    return Intl.message(
      'Your account is not verified!',
      name: 'yourAccountIsNotVerified',
      desc: '',
      args: [],
    );
  }

  /// `Please check your inbox to find the verification email that has been sent to you when you signed up. You may need to check your Spam folder.`
  String get pleaseCheckYourInbox {
    return Intl.message(
      'Please check your inbox to find the verification email that has been sent to you when you signed up. You may need to check your Spam folder.',
      name: 'pleaseCheckYourInbox',
      desc: '',
      args: [],
    );
  }

  /// `GO TO VERIFICATION`
  String get goToVerification {
    return Intl.message(
      'GO TO VERIFICATION',
      name: 'goToVerification',
      desc: '',
      args: [],
    );
  }

  /// `Verified!`
  String get verified {
    return Intl.message(
      'Verified!',
      name: 'verified',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `VERIFY`
  String get verify {
    return Intl.message(
      'VERIFY',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 4-digit verification code\nwe’ve just sent to your email address.`
  String get enter4Digit {
    return Intl.message(
      'Enter the 4-digit verification code\nwe’ve just sent to your email address.',
      name: 'enter4Digit',
      desc: '',
      args: [],
    );
  }

  /// `Not receiving any code?`
  String get notReceivingAnyCode {
    return Intl.message(
      'Not receiving any code?',
      name: 'notReceivingAnyCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `The code you have just entered is incorrect`
  String get incorrectCode {
    return Intl.message(
      'The code you have just entered is incorrect',
      name: 'incorrectCode',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully verify your account.\nYou can now sign in your account.`
  String get verifiedSuccessfully {
    return Intl.message(
      'You have successfully verify your account.\nYou can now sign in your account.',
      name: 'verifiedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Highest Score`
  String get highestScore {
    return Intl.message(
      'Highest Score',
      name: 'highestScore',
      desc: '',
      args: [],
    );
  }

  /// `Target Score`
  String get targetScore {
    return Intl.message(
      'Target Score',
      name: 'targetScore',
      desc: '',
      args: [],
    );
  }

  /// `1v1 Tournaments`
  String get oneVSOneTournaments {
    return Intl.message(
      '1v1 Tournaments',
      name: 'oneVSOneTournaments',
      desc: '',
      args: [],
    );
  }

  /// `2 players, winner takes all`
  String get twoPlayersWinnerTakesAll {
    return Intl.message(
      '2 players, winner takes all',
      name: 'twoPlayersWinnerTakesAll',
      desc: '',
      args: [],
    );
  }

  /// `Featured`
  String get featured {
    return Intl.message(
      'Featured',
      name: 'featured',
      desc: '',
      args: [],
    );
  }

  /// `Most Played`
  String get mostPlayed {
    return Intl.message(
      'Most Played',
      name: 'mostPlayed',
      desc: '',
      args: [],
    );
  }

  /// `New Played`
  String get newPlayed {
    return Intl.message(
      'New Played',
      name: 'newPlayed',
      desc: '',
      args: [],
    );
  }

  /// `New games`
  String get newGames {
    return Intl.message(
      'New games',
      name: 'newGames',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back to Discoveree!`
  String get welcomeBackTobaseplay {
    return Intl.message(
      'Welcome back to Discoveree!',
      name: 'welcomeBackTobaseplay',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueTitle {
    return Intl.message(
      'Continue',
      name: 'continueTitle',
      desc: '',
      args: [],
    );
  }

  /// `You have no notifications :(`
  String get noNotifications {
    return Intl.message(
      'You have no notifications :(',
      name: 'noNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Agree with the terms and conditions`
  String get agreeWithTheTermsAndConditions {
    return Intl.message(
      'Agree with the terms and conditions',
      name: 'agreeWithTheTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Free practice`
  String get freePractice {
    return Intl.message(
      'Free practice',
      name: 'freePractice',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Discoveree!`
  String get welcomeTobaseplay {
    return Intl.message(
      'Welcome to Discoveree!',
      name: 'welcomeTobaseplay',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for joining us!`
  String get thanksForJoining {
    return Intl.message(
      'Thank you for joining us!',
      name: 'thanksForJoining',
      desc: '',
      args: [],
    );
  }

  /// `Your Score`
  String get yourScore {
    return Intl.message(
      'Your Score',
      name: 'yourScore',
      desc: '',
      args: [],
    );
  }

  /// `Unscored`
  String get unScored {
    return Intl.message(
      'Unscored',
      name: 'unScored',
      desc: '',
      args: [],
    );
  }

  /// `You have not yet played and submitted a score`
  String get notYetPlayedSubmittedScore {
    return Intl.message(
      'You have not yet played and submitted a score',
      name: 'notYetPlayedSubmittedScore',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get score {
    return Intl.message(
      'Score',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `Your Ranking`
  String get yourRanking {
    return Intl.message(
      'Your Ranking',
      name: 'yourRanking',
      desc: '',
      args: [],
    );
  }

  /// `Unranked`
  String get unranked {
    return Intl.message(
      'Unranked',
      name: 'unranked',
      desc: '',
      args: [],
    );
  }

  /// `Score to beat`
  String get scoreToBeat {
    return Intl.message(
      'Score to beat',
      name: 'scoreToBeat',
      desc: '',
      args: [],
    );
  }

  /// `Score above this target to win`
  String get scoreAboveTargetToWin {
    return Intl.message(
      'Score above this target to win',
      name: 'scoreAboveTargetToWin',
      desc: '',
      args: [],
    );
  }

  /// `You’ve already won this tournament`
  String get youAreAlreadyWonTournament {
    return Intl.message(
      'You’ve already won this tournament',
      name: 'youAreAlreadyWonTournament',
      desc: '',
      args: [],
    );
  }

  /// `Top Players`
  String get topPlayers {
    return Intl.message(
      'Top Players',
      name: 'topPlayers',
      desc: '',
      args: [],
    );
  }

  /// `Tournament Rules`
  String get tournamentRules {
    return Intl.message(
      'Tournament Rules',
      name: 'tournamentRules',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email below to get a link to reset your password`
  String get enterYourEmail {
    return Intl.message(
      'Enter your email below to get a link to reset your password',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `send`
  String get send {
    return Intl.message(
      'send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Go to reset password`
  String get goToResetPassword {
    return Intl.message(
      'Go to reset password',
      name: 'goToResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password for your Discoveree account.`
  String get enterNewPassword {
    return Intl.message(
      'Enter your new password for your Discoveree account.',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Success!`
  String get success {
    return Intl.message(
      'Success!',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully verify your account.\nYou have 24 hours to now reset your password.`
  String get changePasswordVerified {
    return Intl.message(
      'You have successfully verify your account.\nYou have 24 hours to now reset your password.',
      name: 'changePasswordVerified',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been successfully changed!\nYou can sign in with your new password now.`
  String get changePasswordSuccessfully {
    return Intl.message(
      'Your password has been successfully changed!\nYou can sign in with your new password now.',
      name: 'changePasswordSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `days ago`
  String get daysAgo {
    return Intl.message(
      'days ago',
      name: 'daysAgo',
      desc: '',
      args: [],
    );
  }

  /// `CLAIM ALL`
  String get claimAll {
    return Intl.message(
      'CLAIM ALL',
      name: 'claimAll',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Play Alone`
  String get playAlone {
    return Intl.message(
      'Play Alone',
      name: 'playAlone',
      desc: '',
      args: [],
    );
  }

  /// `Random Matching`
  String get randomMatching {
    return Intl.message(
      'Random Matching',
      name: 'randomMatching',
      desc: '',
      args: [],
    );
  }

  /// `Play with Friends`
  String get playWithFriends {
    return Intl.message(
      'Play with Friends',
      name: 'playWithFriends',
      desc: '',
      args: [],
    );
  }

  /// `Leaderboard`
  String get leaderboard {
    return Intl.message(
      'Leaderboard',
      name: 'leaderboard',
      desc: '',
      args: [],
    );
  }

  /// `How to Play`
  String get howToPlay {
    return Intl.message(
      'How to Play',
      name: 'howToPlay',
      desc: '',
      args: [],
    );
  }

  /// `About the game`
  String get aboutTheGame {
    return Intl.message(
      'About the game',
      name: 'aboutTheGame',
      desc: '',
      args: [],
    );
  }

  /// `Online Friends`
  String get onlineFriends {
    return Intl.message(
      'Online Friends',
      name: 'onlineFriends',
      desc: '',
      args: [],
    );
  }

  /// `Challenge`
  String get challenge {
    return Intl.message(
      'Challenge',
      name: 'challenge',
      desc: '',
      args: [],
    );
  }

  /// `Suggested`
  String get suggested {
    return Intl.message(
      'Suggested',
      name: 'suggested',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Network settings`
  String get networkSettings {
    return Intl.message(
      'Network settings',
      name: 'networkSettings',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Contains bad words. Bad words not allowed`
  String get removeAllBadWords {
    return Intl.message(
      'Contains bad words. Bad words not allowed',
      name: 'removeAllBadWords',
      desc: '',
      args: [],
    );
  }

  /// `The code you have just entered is incorrect`
  String get enterIncorrectCode {
    return Intl.message(
      'The code you have just entered is incorrect',
      name: 'enterIncorrectCode',
      desc: '',
      args: [],
    );
  }

  /// `View Profile`
  String get viewProfile {
    return Intl.message(
      'View Profile',
      name: 'viewProfile',
      desc: '',
      args: [],
    );
  }

  /// `Discover Friends`
  String get discoverFriends {
    return Intl.message(
      'Discover Friends',
      name: 'discoverFriends',
      desc: '',
      args: [],
    );
  }

  /// `Login Rewards`
  String get loginRewards {
    return Intl.message(
      'Login Rewards',
      name: 'loginRewards',
      desc: '',
      args: [],
    );
  }

  /// `Achievements`
  String get achievements {
    return Intl.message(
      'Achievements',
      name: 'achievements',
      desc: '',
      args: [],
    );
  }

  /// `Daily Quests`
  String get dailyQuests {
    return Intl.message(
      'Daily Quests',
      name: 'dailyQuests',
      desc: '',
      args: [],
    );
  }

  /// `Top-Up`
  String get topUp {
    return Intl.message(
      'Top-Up',
      name: 'topUp',
      desc: '',
      args: [],
    );
  }

  /// `Vouchers`
  String get vouchers {
    return Intl.message(
      'Vouchers',
      name: 'vouchers',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Email not found`
  String get emailNotFound {
    return Intl.message(
      'Email not found',
      name: 'emailNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Password incorrect`
  String get passwordIncorrect {
    return Intl.message(
      'Password incorrect',
      name: 'passwordIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Email address is not registered`
  String get emailAddressIsNotRegistered {
    return Intl.message(
      'Email address is not registered',
      name: 'emailAddressIsNotRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Email has not been verified`
  String get emailHasNotBeenVerified {
    return Intl.message(
      'Email has not been verified',
      name: 'emailHasNotBeenVerified',
      desc: '',
      args: [],
    );
  }

  /// `Username already taken`
  String get usernameAlreadyTaken {
    return Intl.message(
      'Username already taken',
      name: 'usernameAlreadyTaken',
      desc: '',
      args: [],
    );
  }

  /// `Email address has already been registered`
  String get emailAddressHasAlreadyBeenRegistered {
    return Intl.message(
      'Email address has already been registered',
      name: 'emailAddressHasAlreadyBeenRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Too many failed verify attempts. Please try again in {minutes} minutes`
  String tooManyFailedVerifyAttempts(Object minutes) {
    return Intl.message(
      'Too many failed verify attempts. Please try again in $minutes minutes',
      name: 'tooManyFailedVerifyAttempts',
      desc: '',
      args: [minutes],
    );
  }

  /// `vs`
  String get vs {
    return Intl.message(
      'vs',
      name: 'vs',
      desc: '',
      args: [],
    );
  }

  /// `send invite`
  String get sendInvite {
    return Intl.message(
      'send invite',
      name: 'sendInvite',
      desc: '',
      args: [],
    );
  }

  /// `Account Disabled`
  String get accountDisabled {
    return Intl.message(
      'Account Disabled',
      name: 'accountDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Challenger Found!`
  String get challengerFound {
    return Intl.message(
      'Challenger Found!',
      name: 'challengerFound',
      desc: '',
      args: [],
    );
  }

  /// `Challenger Not Found!`
  String get challengerNotFound {
    return Intl.message(
      'Challenger Not Found!',
      name: 'challengerNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Your record has been beaten by `
  String get yourRecordHasBeenBeatenBy {
    return Intl.message(
      'Your record has been beaten by ',
      name: 'yourRecordHasBeenBeatenBy',
      desc: '',
      args: [],
    );
  }

  /// `has followed you`
  String get hasFollowYou {
    return Intl.message(
      'has followed you',
      name: 'hasFollowYou',
      desc: '',
      args: [],
    );
  }

  /// `has followed you!`
  String get hasFollowYouWith {
    return Intl.message(
      'has followed you!',
      name: 'hasFollowYouWith',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `Follow Back`
  String get followBack {
    return Intl.message(
      'Follow Back',
      name: 'followBack',
      desc: '',
      args: [],
    );
  }

  /// `Start match`
  String get startMatch {
    return Intl.message(
      'Start match',
      name: 'startMatch',
      desc: '',
      args: [],
    );
  }

  /// `Challenge Amount`
  String get challengeAmount {
    return Intl.message(
      'Challenge Amount',
      name: 'challengeAmount',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for challenger response...`
  String get waitingForChallengerResponse {
    return Intl.message(
      'Waiting for challenger response...',
      name: 'waitingForChallengerResponse',
      desc: '',
      args: [],
    );
  }

  /// `Searching...`
  String get searching {
    return Intl.message(
      'Searching...',
      name: 'searching',
      desc: '',
      args: [],
    );
  }

  /// `Total Prize`
  String get totalPrize {
    return Intl.message(
      'Total Prize',
      name: 'totalPrize',
      desc: '',
      args: [],
    );
  }

  /// `Challenge Result`
  String get challengeResult {
    return Intl.message(
      'Challenge Result',
      name: 'challengeResult',
      desc: '',
      args: [],
    );
  }

  /// `Won`
  String get won {
    return Intl.message(
      'Won',
      name: 'won',
      desc: '',
      args: [],
    );
  }

  /// `Lost`
  String get lost {
    return Intl.message(
      'Lost',
      name: 'lost',
      desc: '',
      args: [],
    );
  }

  /// `Draw`
  String get draw {
    return Intl.message(
      'Draw',
      name: 'draw',
      desc: '',
      args: [],
    );
  }

  /// `OnGoing`
  String get onGoing {
    return Intl.message(
      'OnGoing',
      name: 'onGoing',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get expired {
    return Intl.message(
      'Expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Refunded`
  String get refunded {
    return Intl.message(
      'Refunded',
      name: 'refunded',
      desc: '',
      args: [],
    );
  }

  /// `Match Aborted`
  String get matchAborted {
    return Intl.message(
      'Match Aborted',
      name: 'matchAborted',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `My Badges`
  String get myBadges {
    return Intl.message(
      'My Badges',
      name: 'myBadges',
      desc: '',
      args: [],
    );
  }

  /// `My Games`
  String get myGames {
    return Intl.message(
      'My Games',
      name: 'myGames',
      desc: '',
      args: [],
    );
  }

  /// `A collection of all your achievements`
  String get aCollectionOfAllYourAchievements {
    return Intl.message(
      'A collection of all your achievements',
      name: 'aCollectionOfAllYourAchievements',
      desc: '',
      args: [],
    );
  }

  /// `Games that you have played`
  String get gamesThatYouHavePlayed {
    return Intl.message(
      'Games that you have played',
      name: 'gamesThatYouHavePlayed',
      desc: '',
      args: [],
    );
  }

  /// `Played`
  String get played {
    return Intl.message(
      'Played',
      name: 'played',
      desc: '',
      args: [],
    );
  }

  /// `High Score`
  String get highScore {
    return Intl.message(
      'High Score',
      name: 'highScore',
      desc: '',
      args: [],
    );
  }

  /// `Rank`
  String get rank {
    return Intl.message(
      'Rank',
      name: 'rank',
      desc: '',
      args: [],
    );
  }

  /// `Profile Page`
  String get profilePage {
    return Intl.message(
      'Profile Page',
      name: 'profilePage',
      desc: '',
      args: [],
    );
  }

  /// `PVP Challenges for today`
  String get challengesForToday {
    return Intl.message(
      'PVP Challenges for today',
      name: 'challengesForToday',
      desc: '',
      args: [],
    );
  }

  /// `Your player-versus-player challenge results`
  String get yourPlayerVersusPlayerChallengeResults {
    return Intl.message(
      'Your player-versus-player challenge results',
      name: 'yourPlayerVersusPlayerChallengeResults',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Game not found`
  String get gameNotFound {
    return Intl.message(
      'Game not found',
      name: 'gameNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Opened`
  String get opened {
    return Intl.message(
      'Opened',
      name: 'opened',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Get Back`
  String get getBack {
    return Intl.message(
      'Get Back',
      name: 'getBack',
      desc: '',
      args: [],
    );
  }

  /// `Daily quests will refresh in: `
  String get dailyQuestWillRefresh {
    return Intl.message(
      'Daily quests will refresh in: ',
      name: 'dailyQuestWillRefresh',
      desc: '',
      args: [],
    );
  }

  /// `Claimed!`
  String get claimed {
    return Intl.message(
      'Claimed!',
      name: 'claimed',
      desc: '',
      args: [],
    );
  }

  /// `Tournament Ended`
  String get tournamentEnded {
    return Intl.message(
      'Tournament Ended',
      name: 'tournamentEnded',
      desc: '',
      args: [],
    );
  }

  /// `The tournament will end in `
  String get theTournamentWillEnd {
    return Intl.message(
      'The tournament will end in ',
      name: 'theTournamentWillEnd',
      desc: '',
      args: [],
    );
  }

  /// `Your current rank is`
  String get yourCurrentRankIs {
    return Intl.message(
      'Your current rank is',
      name: 'yourCurrentRankIs',
      desc: '',
      args: [],
    );
  }

  /// `System Notice`
  String get systemNotice {
    return Intl.message(
      'System Notice',
      name: 'systemNotice',
      desc: '',
      args: [],
    );
  }

  /// `The server will be down for maintenance in:`
  String get theServerWillBeDown {
    return Intl.message(
      'The server will be down for maintenance in:',
      name: 'theServerWillBeDown',
      desc: '',
      args: [],
    );
  }

  /// `Quit the game?`
  String get quitTheGameTitle {
    return Intl.message(
      'Quit the game?',
      name: 'quitTheGameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your current Score will be submitted.\nAre you sure you want to quit?`
  String get quitGameMessage {
    return Intl.message(
      'Your current Score will be submitted.\nAre you sure you want to quit?',
      name: 'quitGameMessage',
      desc: '',
      args: [],
    );
  }

  /// `You have paid entry fee for this tournament game, your current score will be submitted.\nAre you sure you want to quit?`
  String get quitTournamentGameMessage {
    return Intl.message(
      'You have paid entry fee for this tournament game, your current score will be submitted.\nAre you sure you want to quit?',
      name: 'quitTournamentGameMessage',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, you have lost the session, please try to play again!`
  String get errorPhotonLostSessionNotification {
    return Intl.message(
      'Sorry, you have lost the session, please try to play again!',
      name: 'errorPhotonLostSessionNotification',
      desc: '',
      args: [],
    );
  }

  /// `Press again to exit`
  String get pressAgainToExit {
    return Intl.message(
      'Press again to exit',
      name: 'pressAgainToExit',
      desc: '',
      args: [],
    );
  }

  /// `Prize`
  String get prize {
    return Intl.message(
      'Prize',
      name: 'prize',
      desc: '',
      args: [],
    );
  }

  /// `Fee`
  String get fee {
    return Intl.message(
      'Fee',
      name: 'fee',
      desc: '',
      args: [],
    );
  }

  /// `Entry`
  String get entry {
    return Intl.message(
      'Entry',
      name: 'entry',
      desc: '',
      args: [],
    );
  }

  /// `has sent you a Follow Request`
  String get hasSentYouAFollowRequest {
    return Intl.message(
      'has sent you a Follow Request',
      name: 'hasSentYouAFollowRequest',
      desc: '',
      args: [],
    );
  }

  /// `Reject`
  String get Reject {
    return Intl.message(
      'Reject',
      name: 'Reject',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get Rejected {
    return Intl.message(
      'Rejected',
      name: 'Rejected',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `You have no Login Rewards`
  String get noLoginReward {
    return Intl.message(
      'You have no Login Rewards',
      name: 'noLoginReward',
      desc: '',
      args: [],
    );
  }

  /// `Login daily to get rewards!`
  String get loginDailyToGetRewards {
    return Intl.message(
      'Login daily to get rewards!',
      name: 'loginDailyToGetRewards',
      desc: '',
      args: [],
    );
  }

  /// `Next login reward in:`
  String get nextLoginRewardsIn {
    return Intl.message(
      'Next login reward in:',
      name: 'nextLoginRewardsIn',
      desc: '',
      args: [],
    );
  }

  /// `Challenge received`
  String get challengeReceived {
    return Intl.message(
      'Challenge received',
      name: 'challengeReceived',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `{displayName} has challenged you to play game of {gameName}!`
  String gameInvitationMessage(Object displayName, Object gameName) {
    return Intl.message(
      '$displayName has challenged you to play game of $gameName!',
      name: 'gameInvitationMessage',
      desc: '',
      args: [displayName, gameName],
    );
  }

  /// `{coins} {type} needed. Purchase {type}?`
  String coinsNotEnough(Object coins, Object type) {
    return Intl.message(
      '$coins $type needed. Purchase $type?',
      name: 'coinsNotEnough',
      desc: '',
      args: [coins, type],
    );
  }

  /// `Disconnected`
  String get disconnected {
    return Intl.message(
      'Disconnected',
      name: 'disconnected',
      desc: '',
      args: [],
    );
  }

  /// `Connecting`
  String get connecting {
    return Intl.message(
      'Connecting',
      name: 'connecting',
      desc: '',
      args: [],
    );
  }

  /// `Finding Opponent`
  String get findingOpponent {
    return Intl.message(
      'Finding Opponent',
      name: 'findingOpponent',
      desc: '',
      args: [],
    );
  }

  /// `Waiting invitee response`
  String get waitingInviteeResponse {
    return Intl.message(
      'Waiting invitee response',
      name: 'waitingInviteeResponse',
      desc: '',
      args: [],
    );
  }

  /// `Your invitee not response`
  String get inviteeNotResponse {
    return Intl.message(
      'Your invitee not response',
      name: 'inviteeNotResponse',
      desc: '',
      args: [],
    );
  }

  /// `Your Invitee reject`
  String get inviteeReject {
    return Intl.message(
      'Your Invitee reject',
      name: 'inviteeReject',
      desc: '',
      args: [],
    );
  }

  /// `Your Inviter left`
  String get yourInviterLeft {
    return Intl.message(
      'Your Inviter left',
      name: 'yourInviterLeft',
      desc: '',
      args: [],
    );
  }

  /// `Your opponent left`
  String get opponentLeft {
    return Intl.message(
      'Your opponent left',
      name: 'opponentLeft',
      desc: '',
      args: [],
    );
  }

  /// `Highest rank`
  String get highestRank {
    return Intl.message(
      'Highest rank',
      name: 'highestRank',
      desc: '',
      args: [],
    );
  }

  /// `Friends List`
  String get friendsList {
    return Intl.message(
      'Friends List',
      name: 'friendsList',
      desc: '',
      args: [],
    );
  }

  /// `Find New Profiles`
  String get findNewProfiles {
    return Intl.message(
      'Find New Profiles',
      name: 'findNewProfiles',
      desc: '',
      args: [],
    );
  }

  /// `Find New Friends`
  String get findNewFriends {
    return Intl.message(
      'Find New Friends',
      name: 'findNewFriends',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get followers {
    return Intl.message(
      'Followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `Unfriend`
  String get unfriend {
    return Intl.message(
      'Unfriend',
      name: 'unfriend',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow`
  String get unfollow {
    return Intl.message(
      'Unfollow',
      name: 'unfollow',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `You have no friends`
  String get noFriends {
    return Intl.message(
      'You have no friends',
      name: 'noFriends',
      desc: '',
      args: [],
    );
  }

  /// `You have no following`
  String get noFollowing {
    return Intl.message(
      'You have no following',
      name: 'noFollowing',
      desc: '',
      args: [],
    );
  }

  /// `You have no followers`
  String get noFollowers {
    return Intl.message(
      'You have no followers',
      name: 'noFollowers',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Request`
  String get cancelRequest {
    return Intl.message(
      'Cancel Request',
      name: 'cancelRequest',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to unfriend `
  String get areUWantToUnfriend {
    return Intl.message(
      'Are you sure you want to unfriend ',
      name: 'areUWantToUnfriend',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to unfollow `
  String get areUWantToUnfollow {
    return Intl.message(
      'Are you sure you want to unfollow ',
      name: 'areUWantToUnfollow',
      desc: '',
      args: [],
    );
  }

  /// `Search for Username or ID`
  String get searchForUsernameOrId {
    return Intl.message(
      'Search for Username or ID',
      name: 'searchForUsernameOrId',
      desc: '',
      args: [],
    );
  }

  /// `Play With A Friend`
  String get playWithAFriend {
    return Intl.message(
      'Play With A Friend',
      name: 'playWithAFriend',
      desc: '',
      args: [],
    );
  }

  /// `Limit Reached`
  String get limitReached {
    return Intl.message(
      'Limit Reached',
      name: 'limitReached',
      desc: '',
      args: [],
    );
  }

  /// `In App Purchases`
  String get inAppPurchases {
    return Intl.message(
      'In App Purchases',
      name: 'inAppPurchases',
      desc: '',
      args: [],
    );
  }

  /// `My Tournament`
  String get myTournament {
    return Intl.message(
      'My Tournament',
      name: 'myTournament',
      desc: '',
      args: [],
    );
  }

  /// `Past`
  String get past {
    return Intl.message(
      'Past',
      name: 'past',
      desc: '',
      args: [],
    );
  }

  /// `Upcomming`
  String get upcomming {
    return Intl.message(
      'Upcomming',
      name: 'upcomming',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Favourite`
  String get favourite {
    return Intl.message(
      'Favourite',
      name: 'favourite',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newFilter {
    return Intl.message(
      'New',
      name: 'newFilter',
      desc: '',
      args: [],
    );
  }

  /// `Empty`
  String get empty {
    return Intl.message(
      'Empty',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Completed Matches`
  String get completedMatches {
    return Intl.message(
      'Completed Matches',
      name: 'completedMatches',
      desc: '',
      args: [],
    );
  }

  /// `Match results with final scores`
  String get matchResultsWithScores {
    return Intl.message(
      'Match results with final scores',
      name: 'matchResultsWithScores',
      desc: '',
      args: [],
    );
  }

  /// `In Progress Matches`
  String get inProgressMatches {
    return Intl.message(
      'In Progress Matches',
      name: 'inProgressMatches',
      desc: '',
      args: [],
    );
  }

  /// `Matches without a clear result yet`
  String get matchesWithoutClearResultYet {
    return Intl.message(
      'Matches without a clear result yet',
      name: 'matchesWithoutClearResultYet',
      desc: '',
      args: [],
    );
  }

  /// `Ongoing Match`
  String get ongoingMatch {
    return Intl.message(
      'Ongoing Match',
      name: 'ongoingMatch',
      desc: '',
      args: [],
    );
  }

  /// `Tournament Fee`
  String get tournamentFee {
    return Intl.message(
      'Tournament Fee',
      name: 'tournamentFee',
      desc: '',
      args: [],
    );
  }

  /// `Match Result`
  String get matchResult {
    return Intl.message(
      'Match Result',
      name: 'matchResult',
      desc: '',
      args: [],
    );
  }

  /// `Play for free`
  String get playForFree {
    return Intl.message(
      'Play for free',
      name: 'playForFree',
      desc: '',
      args: [],
    );
  }

  /// `Try again!`
  String get tryAgain {
    return Intl.message(
      'Try again!',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Good Try, but your Score isn't high enough!`
  String get yourScoreIsNotHighEnough {
    return Intl.message(
      'Good Try, but your Score isn\'t high enough!',
      name: 'yourScoreIsNotHighEnough',
      desc: '',
      args: [],
    );
  }

  /// `Great Job on reaching Rank {newTournamentRank}!`
  String reachingRankTitle(Object newTournamentRank) {
    return Intl.message(
      'Great Job on reaching Rank $newTournamentRank!',
      name: 'reachingRankTitle',
      desc: '',
      args: [newTournamentRank],
    );
  }

  /// `If you maintain your Rank until the Tournament ends, you will receive your Prize in your Inbox!`
  String get reachingRankMessage {
    return Intl.message(
      'If you maintain your Rank until the Tournament ends, you will receive your Prize in your Inbox!',
      name: 'reachingRankMessage',
      desc: '',
      args: [],
    );
  }

  /// `You Did Not Reach The Target Score`
  String get didNotReachTheTargetScore {
    return Intl.message(
      'You Did Not Reach The Target Score',
      name: 'didNotReachTheTargetScore',
      desc: '',
      args: [],
    );
  }

  /// `Great Job On Hitting The Target Score!`
  String get greatJobOnHittingTheTargetScore {
    return Intl.message(
      'Great Job On Hitting The Target Score!',
      name: 'greatJobOnHittingTheTargetScore',
      desc: '',
      args: [],
    );
  }

  /// `Please Check Your Inbox For More Info On How To Collect Your Prize!`
  String get greatJobOnHittingTheTargetScoreMsg1 {
    return Intl.message(
      'Please Check Your Inbox For More Info On How To Collect Your Prize!',
      name: 'greatJobOnHittingTheTargetScoreMsg1',
      desc: '',
      args: [],
    );
  }

  /// `Unfortunately, All Prizes Have Already Been Claimed.\nYour Entry Fee Will Be Refunded, Please Check Your Inbox!`
  String get greatJobOnHittingTheTargetScoreMsg2 {
    return Intl.message(
      'Unfortunately, All Prizes Have Already Been Claimed.\nYour Entry Fee Will Be Refunded, Please Check Your Inbox!',
      name: 'greatJobOnHittingTheTargetScoreMsg2',
      desc: '',
      args: [],
    );
  }

  /// `My vouchers`
  String get myVouchers {
    return Intl.message(
      'My vouchers',
      name: 'myVouchers',
      desc: '',
      args: [],
    );
  }

  /// `Transaction History`
  String get transactionHistory {
    return Intl.message(
      'Transaction History',
      name: 'transactionHistory',
      desc: '',
      args: [],
    );
  }

  /// `Sorted by`
  String get sortedBy {
    return Intl.message(
      'Sorted by',
      name: 'sortedBy',
      desc: '',
      args: [],
    );
  }

  /// `Avatar Frames`
  String get avatarFrames {
    return Intl.message(
      'Avatar Frames',
      name: 'avatarFrames',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for opponent...`
  String get waitingForOpponent {
    return Intl.message(
      'Waiting for opponent...',
      name: 'waitingForOpponent',
      desc: '',
      args: [],
    );
  }

  /// `Title Packages`
  String get titlePackages {
    return Intl.message(
      'Title Packages',
      name: 'titlePackages',
      desc: '',
      args: [],
    );
  }

  /// `Place holder`
  String get placeHolder {
    return Intl.message(
      'Place holder',
      name: 'placeHolder',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Confirmation`
  String get purchaseConfirmation {
    return Intl.message(
      'Purchase Confirmation',
      name: 'purchaseConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `for`
  String get forName {
    return Intl.message(
      'for',
      name: 'forName',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to purchase`
  String get areYouSureWantPurchase {
    return Intl.message(
      'Are you sure you want to purchase',
      name: 'areYouSureWantPurchase',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Waiting...`
  String get waiting {
    return Intl.message(
      'Waiting...',
      name: 'waiting',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully purchase`
  String get youHaveSuccessfullyPurchase {
    return Intl.message(
      'You have successfully purchase',
      name: 'youHaveSuccessfullyPurchase',
      desc: '',
      args: [],
    );
  }

  /// `Recently Played`
  String get recentlyPlayed {
    return Intl.message(
      'Recently Played',
      name: 'recentlyPlayed',
      desc: '',
      args: [],
    );
  }

  /// `Time ended`
  String get timeEnded {
    return Intl.message(
      'Time ended',
      name: 'timeEnded',
      desc: '',
      args: [],
    );
  }

  /// `Email verification failed`
  String get emailVerificationFailed {
    return Intl.message(
      'Email verification failed',
      name: 'emailVerificationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Your activation link has been expired!, please try again later!`
  String get yourActivationLinkHasBeenExpired {
    return Intl.message(
      'Your activation link has been expired!, please try again later!',
      name: 'yourActivationLinkHasBeenExpired',
      desc: '',
      args: [],
    );
  }

  /// `Invite Friends`
  String get inviteFriends {
    return Intl.message(
      'Invite Friends',
      name: 'inviteFriends',
      desc: '',
      args: [],
    );
  }

  /// `Make new friends in Discoveree`
  String get makeNewFriends {
    return Intl.message(
      'Make new friends in Discoveree',
      name: 'makeNewFriends',
      desc: '',
      args: [],
    );
  }

  /// `Refer friends`
  String get referFriend {
    return Intl.message(
      'Refer friends',
      name: 'referFriend',
      desc: '',
      args: [],
    );
  }

  /// `Earn`
  String get earn {
    return Intl.message(
      'Earn',
      name: 'earn',
      desc: '',
      args: [],
    );
  }

  /// `For each Active Friend Referred\n(Up to 200 Coins daily)`
  String get forEachActiveFriend {
    return Intl.message(
      'For each Active Friend Referred\n(Up to 200 Coins daily)',
      name: 'forEachActiveFriend',
      desc: '',
      args: [],
    );
  }

  /// `A friend is ONLY considered Active if he logs in at least ONCE every 3 days`
  String get referRule1 {
    return Intl.message(
      'A friend is ONLY considered Active if he logs in at least ONCE every 3 days',
      name: 'referRule1',
      desc: '',
      args: [],
    );
  }

  /// `Both get`
  String get bothGet {
    return Intl.message(
      'Both get',
      name: 'bothGet',
      desc: '',
      args: [],
    );
  }

  /// `If your Friend makes their first Gem top-up`
  String get referRule2 {
    return Intl.message(
      'If your Friend makes their first Gem top-up',
      name: 'referRule2',
      desc: '',
      args: [],
    );
  }

  /// `Refer Link`
  String get referLink {
    return Intl.message(
      'Refer Link',
      name: 'referLink',
      desc: '',
      args: [],
    );
  }

  /// `Copy and paste this link to your friends:`
  String get copyAndPassReferLink {
    return Intl.message(
      'Copy and paste this link to your friends:',
      name: 'copyAndPassReferLink',
      desc: '',
      args: [],
    );
  }

  /// `Friends referred so far: `
  String get findReferFriend {
    return Intl.message(
      'Friends referred so far: ',
      name: 'findReferFriend',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR Code`
  String get scanQRCode {
    return Intl.message(
      'Scan QR Code',
      name: 'scanQRCode',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR Code with a QR code scanner app:`
  String get scanQRCodeContent {
    return Intl.message(
      'Scan QR Code with a QR code scanner app:',
      name: 'scanQRCodeContent',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Copied`
  String get copied {
    return Intl.message(
      'Copied',
      name: 'copied',
      desc: '',
      args: [],
    );
  }

  /// `Copied to Clipboard`
  String get copyToClipboard {
    return Intl.message(
      'Copied to Clipboard',
      name: 'copyToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message(
      'Rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Profile Info`
  String get profileInfo {
    return Intl.message(
      'Profile Info',
      name: 'profileInfo',
      desc: '',
      args: [],
    );
  }

  /// `Dark mode`
  String get darkMode {
    return Intl.message(
      'Dark mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light mode`
  String get lightMode {
    return Intl.message(
      'Light mode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `All Time`
  String get allTime {
    return Intl.message(
      'All Time',
      name: 'allTime',
      desc: '',
      args: [],
    );
  }

  /// `Last Year`
  String get lastYear {
    return Intl.message(
      'Last Year',
      name: 'lastYear',
      desc: '',
      args: [],
    );
  }

  /// `Last 90 Days`
  String get last90Days {
    return Intl.message(
      'Last 90 Days',
      name: 'last90Days',
      desc: '',
      args: [],
    );
  }

  /// `Last Month`
  String get lastMonth {
    return Intl.message(
      'Last Month',
      name: 'lastMonth',
      desc: '',
      args: [],
    );
  }

  /// `Last Week`
  String get lastWeek {
    return Intl.message(
      'Last Week',
      name: 'lastWeek',
      desc: '',
      args: [],
    );
  }

  /// `Last 24 Hours`
  String get last24Hours {
    return Intl.message(
      'Last 24 Hours',
      name: 'last24Hours',
      desc: '',
      args: [],
    );
  }

  /// `Time of Purchase`
  String get timeOfPurchase {
    return Intl.message(
      'Time of Purchase',
      name: 'timeOfPurchase',
      desc: '',
      args: [],
    );
  }

  /// `Expiry`
  String get expiry {
    return Intl.message(
      'Expiry',
      name: 'expiry',
      desc: '',
      args: [],
    );
  }

  /// `Voucher Code`
  String get voucherCode {
    return Intl.message(
      'Voucher Code',
      name: 'voucherCode',
      desc: '',
      args: [],
    );
  }

  /// `Cost`
  String get cost {
    return Intl.message(
      'Cost',
      name: 'cost',
      desc: '',
      args: [],
    );
  }

  /// `Copy success`
  String get copySuccess {
    return Intl.message(
      'Copy success',
      name: 'copySuccess',
      desc: '',
      args: [],
    );
  }

  /// `Your peers who are currently active right now`
  String get yourPeersOnline {
    return Intl.message(
      'Your peers who are currently active right now',
      name: 'yourPeersOnline',
      desc: '',
      args: [],
    );
  }

  /// `Both you and these profiles follow each other`
  String get followEachOther {
    return Intl.message(
      'Both you and these profiles follow each other',
      name: 'followEachOther',
      desc: '',
      args: [],
    );
  }

  /// `Active Friends`
  String get activeFriend {
    return Intl.message(
      'Active Friends',
      name: 'activeFriend',
      desc: '',
      args: [],
    );
  }

  /// `Inactive Friends`
  String get inactiveFriend {
    return Intl.message(
      'Inactive Friends',
      name: 'inactiveFriend',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile Name`
  String get editProfileName {
    return Intl.message(
      'Edit Profile Name',
      name: 'editProfileName',
      desc: '',
      args: [],
    );
  }

  /// `Payment Phone Number`
  String get paymentPhoneNumber {
    return Intl.message(
      'Payment Phone Number',
      name: 'paymentPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile Picture`
  String get editProfilePicture {
    return Intl.message(
      'Edit Profile Picture',
      name: 'editProfilePicture',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile Cover`
  String get editProfileCover {
    return Intl.message(
      'Edit Profile Cover',
      name: 'editProfileCover',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is not valid`
  String get phoneNumberIsNotValid {
    return Intl.message(
      'Phone number is not valid',
      name: 'phoneNumberIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Phone is Required`
  String get phoneIsRequired {
    return Intl.message(
      'Phone is Required',
      name: 'phoneIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Country / Region is Required`
  String get countryRegionIsRequired {
    return Intl.message(
      'Country / Region is Required',
      name: 'countryRegionIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get discover {
    return Intl.message(
      'Discover',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `Featured products`
  String get featuredProducts {
    return Intl.message(
      'Featured products',
      name: 'featuredProducts',
      desc: '',
      args: [],
    );
  }

  /// `Search chat`
  String get searchChat {
    return Intl.message(
      'Search chat',
      name: 'searchChat',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `All Groups`
  String get allGroups {
    return Intl.message(
      'All Groups',
      name: 'allGroups',
      desc: '',
      args: [],
    );
  }

  /// `New in store`
  String get newInStore {
    return Intl.message(
      'New in store',
      name: 'newInStore',
      desc: '',
      args: [],
    );
  }

  /// `Top sellers`
  String get topSellers {
    return Intl.message(
      'Top sellers',
      name: 'topSellers',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get addToCart {
    return Intl.message(
      'Add To Cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `New Chat Room`
  String get newChatRoom {
    return Intl.message(
      'New Chat Room',
      name: 'newChatRoom',
      desc: '',
      args: [],
    );
  }

  /// `Chat Room Name`
  String get chatRoomName {
    return Intl.message(
      'Chat Room Name',
      name: 'chatRoomName',
      desc: '',
      args: [],
    );
  }

  /// `What is the Chat Room about?`
  String get whatIsTheChatRoomAbout {
    return Intl.message(
      'What is the Chat Room about?',
      name: 'whatIsTheChatRoomAbout',
      desc: '',
      args: [],
    );
  }

  /// `Add Participants`
  String get addParticipants {
    return Intl.message(
      'Add Participants',
      name: 'addParticipants',
      desc: '',
      args: [],
    );
  }

  /// `CREATE`
  String get create {
    return Intl.message(
      'CREATE',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Please input name`
  String get pleaseInputName {
    return Intl.message(
      'Please input name',
      name: 'pleaseInputName',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `members`
  String get members {
    return Intl.message(
      'members',
      name: 'members',
      desc: '',
      args: [],
    );
  }

  /// `Ratings & Reviews`
  String get ratingsReviews {
    return Intl.message(
      'Ratings & Reviews',
      name: 'ratingsReviews',
      desc: '',
      args: [],
    );
  }

  /// `Tap to rate`
  String get tapToRate {
    return Intl.message(
      'Tap to rate',
      name: 'tapToRate',
      desc: '',
      args: [],
    );
  }

  /// `Write A Review`
  String get writeAReview {
    return Intl.message(
      'Write A Review',
      name: 'writeAReview',
      desc: '',
      args: [],
    );
  }

  /// `Helper Text`
  String get helperText {
    return Intl.message(
      'Helper Text',
      name: 'helperText',
      desc: '',
      args: [],
    );
  }

  /// `Your Reviews`
  String get yourReviews {
    return Intl.message(
      'Your Reviews',
      name: 'yourReviews',
      desc: '',
      args: [],
    );
  }

  /// `Content is required`
  String get contentIsRequired {
    return Intl.message(
      'Content is required',
      name: 'contentIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Search for product name,...`
  String get productSearchHint {
    return Intl.message(
      'Search for product name,...',
      name: 'productSearchHint',
      desc: '',
      args: [],
    );
  }

  /// `Average rating`
  String get averageRating {
    return Intl.message(
      'Average rating',
      name: 'averageRating',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest {
    return Intl.message(
      'Latest',
      name: 'latest',
      desc: '',
      args: [],
    );
  }

  /// `Popularity`
  String get popularity {
    return Intl.message(
      'Popularity',
      name: 'popularity',
      desc: '',
      args: [],
    );
  }

  /// `Price high to low`
  String get priceHighToLow {
    return Intl.message(
      'Price high to low',
      name: 'priceHighToLow',
      desc: '',
      args: [],
    );
  }

  /// `Price low to high`
  String get priceLowToHigh {
    return Intl.message(
      'Price low to high',
      name: 'priceLowToHigh',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get sortBy {
    return Intl.message(
      'Sort by',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get clearAll {
    return Intl.message(
      'Clear All',
      name: 'clearAll',
      desc: '',
      args: [],
    );
  }

  /// `Filter by price`
  String get filterByPrice {
    return Intl.message(
      'Filter by price',
      name: 'filterByPrice',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `On sale`
  String get onSale {
    return Intl.message(
      'On sale',
      name: 'onSale',
      desc: '',
      args: [],
    );
  }

  /// `Tag`
  String get tag {
    return Intl.message(
      'Tag',
      name: 'tag',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Another Filter`
  String get anotherFilter {
    return Intl.message(
      'Another Filter',
      name: 'anotherFilter',
      desc: '',
      args: [],
    );
  }

  /// `Reviews not found`
  String get reviewsNotFound {
    return Intl.message(
      'Reviews not found',
      name: 'reviewsNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Show more`
  String get showMore {
    return Intl.message(
      'Show more',
      name: 'showMore',
      desc: '',
      args: [],
    );
  }

  /// `Show less`
  String get showLess {
    return Intl.message(
      'Show less',
      name: 'showLess',
      desc: '',
      args: [],
    );
  }

  /// `Related Products`
  String get relatedProducts {
    return Intl.message(
      'Related Products',
      name: 'relatedProducts',
      desc: '',
      args: [],
    );
  }

  /// `Sales`
  String get sales {
    return Intl.message(
      'Sales',
      name: 'sales',
      desc: '',
      args: [],
    );
  }

  /// `All Chat`
  String get allDirects {
    return Intl.message(
      'All Chat',
      name: 'allDirects',
      desc: '',
      args: [],
    );
  }

  /// `Delete chat history`
  String get deleteChatHistory {
    return Intl.message(
      'Delete chat history',
      name: 'deleteChatHistory',
      desc: '',
      args: [],
    );
  }

  /// `Block {name}`
  String block(Object name) {
    return Intl.message(
      'Block $name',
      name: 'block',
      desc: '',
      args: [name],
    );
  }

  /// `Report an issue`
  String get reportAnIssue {
    return Intl.message(
      'Report an issue',
      name: 'reportAnIssue',
      desc: '',
      args: [],
    );
  }

  /// `See {name} Profile`
  String seeProfile(Object name) {
    return Intl.message(
      'See $name Profile',
      name: 'seeProfile',
      desc: '',
      args: [name],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `This user has been blocked`
  String get thisUserHasBeenBlocked {
    return Intl.message(
      'This user has been blocked',
      name: 'thisUserHasBeenBlocked',
      desc: '',
      args: [],
    );
  }

  /// `Unblock {name}`
  String unBlockUserName(Object name) {
    return Intl.message(
      'Unblock $name',
      name: 'unBlockUserName',
      desc: '',
      args: [name],
    );
  }

  /// `You has been blocked`
  String get youHasBeenBlocked {
    return Intl.message(
      'You has been blocked',
      name: 'youHasBeenBlocked',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Shopping cart`
  String get shoppingCart {
    return Intl.message(
      'Shopping cart',
      name: 'shoppingCart',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to checkout`
  String get proceedToCheckout {
    return Intl.message(
      'Proceed to checkout',
      name: 'proceedToCheckout',
      desc: '',
      args: [],
    );
  }

  /// `item`
  String get item {
    return Intl.message(
      'item',
      name: 'item',
      desc: '',
      args: [],
    );
  }

  /// `items`
  String get items {
    return Intl.message(
      'items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Cart total`
  String get cartTotal {
    return Intl.message(
      'Cart total',
      name: 'cartTotal',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is currently empty.`
  String get cartIsEmpty {
    return Intl.message(
      'Your cart is currently empty.',
      name: 'cartIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Favourite Products`
  String get favouriteProducts {
    return Intl.message(
      'Favourite Products',
      name: 'favouriteProducts',
      desc: '',
      args: [],
    );
  }

  /// `Before proceed to checkout you must add some products to your shopping cart. You will find a lot of interesting products on our "Shop" page.`
  String get cartEmptyDesc {
    return Intl.message(
      'Before proceed to checkout you must add some products to your shopping cart. You will find a lot of interesting products on our "Shop" page.',
      name: 'cartEmptyDesc',
      desc: '',
      args: [],
    );
  }

  /// `Return to shop`
  String get returnToShop {
    return Intl.message(
      'Return to shop',
      name: 'returnToShop',
      desc: '',
      args: [],
    );
  }

  /// `Update Chat Room`
  String get updateChatRoom {
    return Intl.message(
      'Update Chat Room',
      name: 'updateChatRoom',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Edit Group Chat`
  String get editGroupChat {
    return Intl.message(
      'Edit Group Chat',
      name: 'editGroupChat',
      desc: '',
      args: [],
    );
  }

  /// `Failed to Delete`
  String get failedToDelete {
    return Intl.message(
      'Failed to Delete',
      name: 'failedToDelete',
      desc: '',
      args: [],
    );
  }

  /// `Apple connection is not available for your device`
  String get appleConnectionNotAvailable {
    return Intl.message(
      'Apple connection is not available for your device',
      name: 'appleConnectionNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Can not make purchase!`
  String get cannotMakePurchase {
    return Intl.message(
      'Can not make purchase!',
      name: 'cannotMakePurchase',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to unblock {username}`
  String doYouWantToUnBlockThisUser(Object username) {
    return Intl.message(
      'Do you want to unblock $username',
      name: 'doYouWantToUnBlockThisUser',
      desc: '',
      args: [username],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Billing Details`
  String get billingDetails {
    return Intl.message(
      'Billing Details',
      name: 'billingDetails',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Country / Region`
  String get countryRegion {
    return Intl.message(
      'Country / Region',
      name: 'countryRegion',
      desc: '',
      args: [],
    );
  }

  /// `Create an account?`
  String get createAccount {
    return Intl.message(
      'Create an account?',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Order notes`
  String get orderNotes {
    return Intl.message(
      'Order notes',
      name: 'orderNotes',
      desc: '',
      args: [],
    );
  }

  /// `Your Order`
  String get yourOrder {
    return Intl.message(
      'Your Order',
      name: 'yourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product {
    return Intl.message(
      'Product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Place Order`
  String get placeOrder {
    return Intl.message(
      'Place Order',
      name: 'placeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Please Select one country`
  String get pleaseSelectOneCountry {
    return Intl.message(
      'Please Select one country',
      name: 'pleaseSelectOneCountry',
      desc: '',
      args: [],
    );
  }

  /// `order success`
  String get orderSuccess {
    return Intl.message(
      'order success',
      name: 'orderSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Search for Country / Region`
  String get searchForCountryRegion {
    return Intl.message(
      'Search for Country / Region',
      name: 'searchForCountryRegion',
      desc: '',
      args: [],
    );
  }

  /// `No Messages`
  String get noMessages {
    return Intl.message(
      'No Messages',
      name: 'noMessages',
      desc: '',
      args: [],
    );
  }

  /// `What's wrong`
  String get whatsWrong {
    return Intl.message(
      'What\'s wrong',
      name: 'whatsWrong',
      desc: '',
      args: [],
    );
  }

  /// `Harassmment`
  String get harassmment {
    return Intl.message(
      'Harassmment',
      name: 'harassmment',
      desc: '',
      args: [],
    );
  }

  /// `Impersonation`
  String get impersonation {
    return Intl.message(
      'Impersonation',
      name: 'impersonation',
      desc: '',
      args: [],
    );
  }

  /// `Suicide of self-harm`
  String get suicideOfSelfHarm {
    return Intl.message(
      'Suicide of self-harm',
      name: 'suicideOfSelfHarm',
      desc: '',
      args: [],
    );
  }

  /// `Sharing inappropriate things`
  String get sharingInappropriateThings {
    return Intl.message(
      'Sharing inappropriate things',
      name: 'sharingInappropriateThings',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorised sales`
  String get unauthorisedSales {
    return Intl.message(
      'Unauthorised sales',
      name: 'unauthorisedSales',
      desc: '',
      args: [],
    );
  }

  /// `Hate speech`
  String get hateSpeech {
    return Intl.message(
      'Hate speech',
      name: 'hateSpeech',
      desc: '',
      args: [],
    );
  }

  /// `something else?`
  String get somethingElse {
    return Intl.message(
      'something else?',
      name: 'somethingElse',
      desc: '',
      args: [],
    );
  }

  /// `Technical issue`
  String get technicalIssue {
    return Intl.message(
      'Technical issue',
      name: 'technicalIssue',
      desc: '',
      args: [],
    );
  }

  /// `Spam`
  String get spam {
    return Intl.message(
      'Spam',
      name: 'spam',
      desc: '',
      args: [],
    );
  }

  /// `False news`
  String get falseNews {
    return Intl.message(
      'False news',
      name: 'falseNews',
      desc: '',
      args: [],
    );
  }

  /// `Hacking`
  String get hacking {
    return Intl.message(
      'Hacking',
      name: 'hacking',
      desc: '',
      args: [],
    );
  }

  /// `IF SOMEONE IS IN DANGER, CALL YOUR LOCAL EMERGENCY SERVICES. DON’T WAIT.`
  String get ifSomeOneIsInDanger {
    return Intl.message(
      'IF SOMEONE IS IN DANGER, CALL YOUR LOCAL EMERGENCY SERVICES. DON’T WAIT.',
      name: 'ifSomeOneIsInDanger',
      desc: '',
      args: [],
    );
  }

  /// `Display name`
  String get displayName {
    return Intl.message(
      'Display name',
      name: 'displayName',
      desc: '',
      args: [],
    );
  }

  /// `Order History`
  String get orderHistory {
    return Intl.message(
      'Order History',
      name: 'orderHistory',
      desc: '',
      args: [],
    );
  }

  /// `Order Detail`
  String get orderDetail {
    return Intl.message(
      'Order Detail',
      name: 'orderDetail',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Order Info`
  String get orderInfo {
    return Intl.message(
      'Order Info',
      name: 'orderInfo',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get orderId {
    return Intl.message(
      'Order ID',
      name: 'orderId',
      desc: '',
      args: [],
    );
  }

  /// `Order Creation Date`
  String get orderCreationDate {
    return Intl.message(
      'Order Creation Date',
      name: 'orderCreationDate',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Ongoing Tournaments`
  String get ongoingTournaments {
    return Intl.message(
      'Ongoing Tournaments',
      name: 'ongoingTournaments',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have enough Gems`
  String get youDoNotHaveEnoughGems {
    return Intl.message(
      'You don’t have enough Gems',
      name: 'youDoNotHaveEnoughGems',
      desc: '',
      args: [],
    );
  }

  /// `Ending soon`
  String get endingSoon {
    return Intl.message(
      'Ending soon',
      name: 'endingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Games To Invite`
  String get gamesToInvite {
    return Intl.message(
      'Games To Invite',
      name: 'gamesToInvite',
      desc: '',
      args: [],
    );
  }

  /// `Customer Note`
  String get customerNote {
    return Intl.message(
      'Customer Note',
      name: 'customerNote',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Order Note`
  String get orderNote {
    return Intl.message(
      'Order Note',
      name: 'orderNote',
      desc: '',
      args: [],
    );
  }

  /// `Online Now`
  String get onlineNow {
    return Intl.message(
      'Online Now',
      name: 'onlineNow',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for buying!`
  String get yourbaseshopOrderBeenReceived {
    return Intl.message(
      'Thank you for buying!',
      name: 'yourbaseshopOrderBeenReceived',
      desc: '',
      args: [],
    );
  }

  /// `Your order was completed successfully`
  String get thanksForYourOrder {
    return Intl.message(
      'Your order was completed successfully',
      name: 'thanksForYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Sandbox mode`
  String get sandboxMode {
    return Intl.message(
      'Sandbox mode',
      name: 'sandboxMode',
      desc: '',
      args: [],
    );
  }

  /// `goPay is a proprietary payment aggregator by Base that specializes in emerging markets.`
  String get goPayProprietaryPaymentAggregator {
    return Intl.message(
      'goPay is a proprietary payment aggregator by Base that specializes in emerging markets.',
      name: 'goPayProprietaryPaymentAggregator',
      desc: '',
      args: [],
    );
  }

  /// `Play again`
  String get playAgain {
    return Intl.message(
      'Play again',
      name: 'playAgain',
      desc: '',
      args: [],
    );
  }

  /// `Your Score Has Been Submitted!`
  String get yourScoreHasBeenSubmitted {
    return Intl.message(
      'Your Score Has Been Submitted!',
      name: 'yourScoreHasBeenSubmitted',
      desc: '',
      args: [],
    );
  }

  /// `You was block by {name}`
  String youWasBlockedBy(Object name) {
    return Intl.message(
      'You was block by $name',
      name: 'youWasBlockedBy',
      desc: '',
      args: [name],
    );
  }

  /// `Search for games...`
  String get searchForGames {
    return Intl.message(
      'Search for games...',
      name: 'searchForGames',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get helpAndSupport {
    return Intl.message(
      'Help & Support',
      name: 'helpAndSupport',
      desc: '',
      args: [],
    );
  }

  /// `Adaptive Sharpening`
  String get feature_adaptive_sharpen {
    return Intl.message(
      'Adaptive Sharpening',
      name: 'feature_adaptive_sharpen',
      desc: '',
      args: [],
    );
  }

  /// `Algorithms`
  String get feature_algorithm {
    return Intl.message(
      'Algorithms',
      name: 'feature_algorithm',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Stickers`
  String get feature_amazing_sticker {
    return Intl.message(
      'Advanced Stickers',
      name: 'feature_amazing_sticker',
      desc: '',
      args: [],
    );
  }

  /// `Animoji`
  String get feature_animoji {
    return Intl.message(
      'Animoji',
      name: 'feature_animoji',
      desc: '',
      args: [],
    );
  }

  /// `AR`
  String get feature_ar {
    return Intl.message(
      'AR',
      name: 'feature_ar',
      desc: '',
      args: [],
    );
  }

  /// `Try-on`
  String get feature_ar_try_on {
    return Intl.message(
      'Try-on',
      name: 'feature_ar_try_on',
      desc: '',
      args: [],
    );
  }

  /// `AR Bracelets Try-on`
  String get feature_ar_bracelet {
    return Intl.message(
      'AR Bracelets Try-on',
      name: 'feature_ar_bracelet',
      desc: '',
      args: [],
    );
  }

  /// `AR Earrings Try-on`
  String get feature_ar_earrings {
    return Intl.message(
      'AR Earrings Try-on',
      name: 'feature_ar_earrings',
      desc: '',
      args: [],
    );
  }

  /// `AR Glasses Try-on`
  String get feature_ar_glasses {
    return Intl.message(
      'AR Glasses Try-on',
      name: 'feature_ar_glasses',
      desc: '',
      args: [],
    );
  }

  /// `AR Hair Dye`
  String get feature_ar_hair_dye {
    return Intl.message(
      'AR Hair Dye',
      name: 'feature_ar_hair_dye',
      desc: '',
      args: [],
    );
  }

  /// `AR Hat Try-on`
  String get feature_ar_hat {
    return Intl.message(
      'AR Hat Try-on',
      name: 'feature_ar_hat',
      desc: '',
      args: [],
    );
  }

  /// `Landmark AR`
  String get feature_ar_landmark {
    return Intl.message(
      'Landmark AR',
      name: 'feature_ar_landmark',
      desc: '',
      args: [],
    );
  }

  /// `AR Lipstick Try-on`
  String get feature_ar_lipstick {
    return Intl.message(
      'AR Lipstick Try-on',
      name: 'feature_ar_lipstick',
      desc: '',
      args: [],
    );
  }

  /// `AR Nails Try-on`
  String get feature_ar_nail {
    return Intl.message(
      'AR Nails Try-on',
      name: 'feature_ar_nail',
      desc: '',
      args: [],
    );
  }

  /// `AR Necklace Try-on`
  String get feature_ar_necklace {
    return Intl.message(
      'AR Necklace Try-on',
      name: 'feature_ar_necklace',
      desc: '',
      args: [],
    );
  }

  /// `Product AR`
  String get feature_ar_object {
    return Intl.message(
      'Product AR',
      name: 'feature_ar_object',
      desc: '',
      args: [],
    );
  }

  /// `AR Purse Try-on`
  String get feature_ar_purse {
    return Intl.message(
      'AR Purse Try-on',
      name: 'feature_ar_purse',
      desc: '',
      args: [],
    );
  }

  /// `AR Ring Try-on`
  String get feature_ar_ring {
    return Intl.message(
      'AR Ring Try-on',
      name: 'feature_ar_ring',
      desc: '',
      args: [],
    );
  }

  /// `AR Scan`
  String get feature_ar_scan {
    return Intl.message(
      'AR Scan',
      name: 'feature_ar_scan',
      desc: '',
      args: [],
    );
  }

  /// `AR Shoes Try-on`
  String get feature_ar_shoe {
    return Intl.message(
      'AR Shoes Try-on',
      name: 'feature_ar_shoe',
      desc: '',
      args: [],
    );
  }

  /// `Sky & Ground AR`
  String get feature_ar_sky_land {
    return Intl.message(
      'Sky & Ground AR',
      name: 'feature_ar_sky_land',
      desc: '',
      args: [],
    );
  }

  /// `AR Slam`
  String get feature_ar_slam {
    return Intl.message(
      'AR Slam',
      name: 'feature_ar_slam',
      desc: '',
      args: [],
    );
  }

  /// `AR Watch Try-on`
  String get feature_ar_watch {
    return Intl.message(
      'AR Watch Try-on',
      name: 'feature_ar_watch',
      desc: '',
      args: [],
    );
  }

  /// `Avatar`
  String get feature_avatar {
    return Intl.message(
      'Avatar',
      name: 'feature_avatar',
      desc: '',
      args: [],
    );
  }

  /// `Beauty & Body Effects`
  String get feature_beauty_lite {
    return Intl.message(
      'Beauty & Body Effects',
      name: 'feature_beauty_lite',
      desc: '',
      args: [],
    );
  }

  /// `Beauty & Body Effects Pro`
  String get feature_beauty_standard {
    return Intl.message(
      'Beauty & Body Effects Pro',
      name: 'feature_beauty_standard',
      desc: '',
      args: [],
    );
  }

  /// `Scene Recognition (C1)`
  String get feature_c1 {
    return Intl.message(
      'Scene Recognition (C1)',
      name: 'feature_c1',
      desc: '',
      args: [],
    );
  }

  /// `Scene Recognition (C2)`
  String get feature_c2 {
    return Intl.message(
      'Scene Recognition (C2)',
      name: 'feature_c2',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Detection`
  String get feature_car {
    return Intl.message(
      'Vehicle Detection',
      name: 'feature_car',
      desc: '',
      args: [],
    );
  }

  /// `Concentration Estimation`
  String get feature_concentrate {
    return Intl.message(
      'Concentration Estimation',
      name: 'feature_concentrate',
      desc: '',
      args: [],
    );
  }

  /// `CreationKit`
  String get feature_creation_kit {
    return Intl.message(
      'CreationKit',
      name: 'feature_creation_kit',
      desc: '',
      args: [],
    );
  }

  /// `Effects`
  String get feature_effect {
    return Intl.message(
      'Effects',
      name: 'feature_effect',
      desc: '',
      args: [],
    );
  }

  /// `Face`
  String get feature_face {
    return Intl.message(
      'Face',
      name: 'feature_face',
      desc: '',
      args: [],
    );
  }

  /// `Face Clustering`
  String get feature_face_cluster {
    return Intl.message(
      'Face Clustering',
      name: 'feature_face_cluster',
      desc: '',
      args: [],
    );
  }

  /// `Face Verification`
  String get feature_face_verify {
    return Intl.message(
      'Face Verification',
      name: 'feature_face_verify',
      desc: '',
      args: [],
    );
  }

  /// `Gaze Detection`
  String get feature_gaze_estimation {
    return Intl.message(
      'Gaze Detection',
      name: 'feature_gaze_estimation',
      desc: '',
      args: [],
    );
  }

  /// `Hair Segmentation`
  String get feature_hair_parse {
    return Intl.message(
      'Hair Segmentation',
      name: 'feature_hair_parse',
      desc: '',
      args: [],
    );
  }

  /// `Gesture Recognition`
  String get feature_hand {
    return Intl.message(
      'Gesture Recognition',
      name: 'feature_hand',
      desc: '',
      args: [],
    );
  }

  /// `Head Segmentation`
  String get feature_head_seg {
    return Intl.message(
      'Head Segmentation',
      name: 'feature_head_seg',
      desc: '',
      args: [],
    );
  }

  /// `Distance Estimation`
  String get feature_human_distance {
    return Intl.message(
      'Distance Estimation',
      name: 'feature_human_distance',
      desc: '',
      args: [],
    );
  }

  /// `Image Quality`
  String get feature_image_quality {
    return Intl.message(
      'Image Quality',
      name: 'feature_image_quality',
      desc: '',
      args: [],
    );
  }

  /// `Light Condition Recognition`
  String get feature_light {
    return Intl.message(
      'Light Condition Recognition',
      name: 'feature_light',
      desc: '',
      args: [],
    );
  }

  /// `Virtual Background`
  String get feature_matting_sticker {
    return Intl.message(
      'Virtual Background',
      name: 'feature_matting_sticker',
      desc: '',
      args: [],
    );
  }

  /// `Night Scene Augmentation`
  String get feature_night_scene {
    return Intl.message(
      'Night Scene Augmentation',
      name: 'feature_night_scene',
      desc: '',
      args: [],
    );
  }

  /// `Pet Face`
  String get feature_pet_face {
    return Intl.message(
      'Pet Face',
      name: 'feature_pet_face',
      desc: '',
      args: [],
    );
  }

  /// `Background Segmentation`
  String get feature_portrait {
    return Intl.message(
      'Background Segmentation',
      name: 'feature_portrait',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR Code`
  String get feature_qr_scan {
    return Intl.message(
      'Scan QR Code',
      name: 'feature_qr_scan',
      desc: '',
      args: [],
    );
  }

  /// `Body Motion Detection`
  String get feature_skeleton {
    return Intl.message(
      'Body Motion Detection',
      name: 'feature_skeleton',
      desc: '',
      args: [],
    );
  }

  /// `Sky Segmentation`
  String get feature_sky_seg {
    return Intl.message(
      'Sky Segmentation',
      name: 'feature_sky_seg',
      desc: '',
      args: [],
    );
  }

  /// `Sport & Fitness`
  String get feature_sport {
    return Intl.message(
      'Sport & Fitness',
      name: 'feature_sport',
      desc: '',
      args: [],
    );
  }

  /// `Fitness Assistant`
  String get feature_sport_assistance {
    return Intl.message(
      'Fitness Assistant',
      name: 'feature_sport_assistance',
      desc: '',
      args: [],
    );
  }

  /// `Stickers`
  String get feature_sticker {
    return Intl.message(
      'Stickers',
      name: 'feature_sticker',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Makeup Set`
  String get feature_style_makeup {
    return Intl.message(
      'Advanced Makeup Set',
      name: 'feature_style_makeup',
      desc: '',
      args: [],
    );
  }

  /// `Video Classification`
  String get feature_video_cls {
    return Intl.message(
      'Video Classification',
      name: 'feature_video_cls',
      desc: '',
      args: [],
    );
  }

  /// `Super Resolution`
  String get feature_video_sr {
    return Intl.message(
      'Super Resolution',
      name: 'feature_video_sr',
      desc: '',
      args: [],
    );
  }

  /// `Background Blur`
  String get feature_background_blur {
    return Intl.message(
      'Background Blur',
      name: 'feature_background_blur',
      desc: '',
      args: [],
    );
  }

  /// `Search games`
  String get searchGame {
    return Intl.message(
      'Search games',
      name: 'searchGame',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to continue.`
  String get pleaseSignIn {
    return Intl.message(
      'Please sign in to continue.',
      name: 'pleaseSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Notice`
  String get notice {
    return Intl.message(
      'Notice',
      name: 'notice',
      desc: '',
      args: [],
    );
  }

  /// `Tier`
  String get tier {
    return Intl.message(
      'Tier',
      name: 'tier',
      desc: '',
      args: [],
    );
  }

  /// `Amateur`
  String get amateur {
    return Intl.message(
      'Amateur',
      name: 'amateur',
      desc: '',
      args: [],
    );
  }

  /// `Expert`
  String get expert {
    return Intl.message(
      'Expert',
      name: 'expert',
      desc: '',
      args: [],
    );
  }

  /// `Master`
  String get master {
    return Intl.message(
      'Master',
      name: 'master',
      desc: '',
      args: [],
    );
  }

  /// `Novice`
  String get novice {
    return Intl.message(
      'Novice',
      name: 'novice',
      desc: '',
      args: [],
    );
  }

  /// `My cart`
  String get myCart {
    return Intl.message(
      'My cart',
      name: 'myCart',
      desc: '',
      args: [],
    );
  }

  /// `Order complete`
  String get orderComplete {
    return Intl.message(
      'Order complete',
      name: 'orderComplete',
      desc: '',
      args: [],
    );
  }

  /// `An invoice, including the details about your order has been sent to your email address. Please keep it for your own records.`
  String get anInvoiceOwnRecords {
    return Intl.message(
      'An invoice, including the details about your order has been sent to your email address. Please keep it for your own records.',
      name: 'anInvoiceOwnRecords',
      desc: '',
      args: [],
    );
  }

  /// `Continue shopping`
  String get continueShopping {
    return Intl.message(
      'Continue shopping',
      name: 'continueShopping',
      desc: '',
      args: [],
    );
  }

  /// `Sort & Filter`
  String get sortAndFilter {
    return Intl.message(
      'Sort & Filter',
      name: 'sortAndFilter',
      desc: '',
      args: [],
    );
  }

  /// `Apply Sort & Filter`
  String get applySortAndFilter {
    return Intl.message(
      'Apply Sort & Filter',
      name: 'applySortAndFilter',
      desc: '',
      args: [],
    );
  }

  /// `Results for `
  String get resultsFor {
    return Intl.message(
      'Results for ',
      name: 'resultsFor',
      desc: '',
      args: [],
    );
  }

  /// `Search products`
  String get searchProduct {
    return Intl.message(
      'Search products',
      name: 'searchProduct',
      desc: '',
      args: [],
    );
  }

  /// `Your orders`
  String get yourOrders {
    return Intl.message(
      'Your orders',
      name: 'yourOrders',
      desc: '',
      args: [],
    );
  }

  /// `Order Completed!`
  String get orderCompleted {
    return Intl.message(
      'Order Completed!',
      name: 'orderCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Currently on sales`
  String get currentlyOnSales {
    return Intl.message(
      'Currently on sales',
      name: 'currentlyOnSales',
      desc: '',
      args: [],
    );
  }

  /// `Social Page`
  String get socialPage {
    return Intl.message(
      'Social Page',
      name: 'socialPage',
      desc: '',
      args: [],
    );
  }

  /// `Notifications Page`
  String get notificationsPage {
    return Intl.message(
      'Notifications Page',
      name: 'notificationsPage',
      desc: '',
      args: [],
    );
  }

  /// `Requested`
  String get requested {
    return Intl.message(
      'Requested',
      name: 'requested',
      desc: '',
      args: [],
    );
  }

  /// `Additional Information`
  String get additionalInformation {
    return Intl.message(
      'Additional Information',
      name: 'additionalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our`
  String get yourPersonal {
    return Intl.message(
      'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our',
      name: 'yourPersonal',
      desc: '',
      args: [],
    );
  }

  /// `Matches`
  String get matches {
    return Intl.message(
      'Matches',
      name: 'matches',
      desc: '',
      args: [],
    );
  }

  /// `No Results Found`
  String get noResultsFound {
    return Intl.message(
      'No Results Found',
      name: 'noResultsFound',
      desc: '',
      args: [],
    );
  }

  /// `We could not find any results matching your search`
  String get coundNotFindAnyResults {
    return Intl.message(
      'We could not find any results matching your search',
      name: 'coundNotFindAnyResults',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Zip/Postcode`
  String get zipPostcode {
    return Intl.message(
      'Zip/Postcode',
      name: 'zipPostcode',
      desc: '',
      args: [],
    );
  }

  /// `Address line 1`
  String get addressLine1 {
    return Intl.message(
      'Address line 1',
      name: 'addressLine1',
      desc: '',
      args: [],
    );
  }

  /// `Address line 2`
  String get addressLine2 {
    return Intl.message(
      'Address line 2',
      name: 'addressLine2',
      desc: '',
      args: [],
    );
  }

  /// `All Games`
  String get allGame {
    return Intl.message(
      'All Games',
      name: 'allGame',
      desc: '',
      args: [],
    );
  }

  /// `Profiles you are currently following`
  String get profilesCurrentlyFollowing {
    return Intl.message(
      'Profiles you are currently following',
      name: 'profilesCurrentlyFollowing',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Profiles who are following you`
  String get profilesWhoAreFollowingYou {
    return Intl.message(
      'Profiles who are following you',
      name: 'profilesWhoAreFollowingYou',
      desc: '',
      args: [],
    );
  }

  /// `Group chats`
  String get groupChats {
    return Intl.message(
      'Group chats',
      name: 'groupChats',
      desc: '',
      args: [],
    );
  }

  /// `Contacts`
  String get contacts {
    return Intl.message(
      'Contacts',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Type something to search for a contact or a message`
  String get typeSomethingToSearchForAMessage {
    return Intl.message(
      'Type something to search for a contact or a message',
      name: 'typeSomethingToSearchForAMessage',
      desc: '',
      args: [],
    );
  }

  /// `Type something to search a contact to chat`
  String get typeSomethingToSearchForAChat {
    return Intl.message(
      'Type something to search a contact to chat',
      name: 'typeSomethingToSearchForAChat',
      desc: '',
      args: [],
    );
  }

  /// `Type something to`
  String get typeSomethingToSearch {
    return Intl.message(
      'Type something to',
      name: 'typeSomethingToSearch',
      desc: '',
      args: [],
    );
  }

  /// `Tournaments Filter`
  String get tournamentsFilter {
    return Intl.message(
      'Tournaments Filter',
      name: 'tournamentsFilter',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `All Tournaments`
  String get allTournaments {
    return Intl.message(
      'All Tournaments',
      name: 'allTournaments',
      desc: '',
      args: [],
    );
  }

  /// `1v1`
  String get oneVSOne {
    return Intl.message(
      '1v1',
      name: 'oneVSOne',
      desc: '',
      args: [],
    );
  }

  /// `Games Filter`
  String get gamesFilter {
    return Intl.message(
      'Games Filter',
      name: 'gamesFilter',
      desc: '',
      args: [],
    );
  }

  /// `No daily quest`
  String get noDailyQuest {
    return Intl.message(
      'No daily quest',
      name: 'noDailyQuest',
      desc: '',
      args: [],
    );
  }

  /// `All dates`
  String get allDates {
    return Intl.message(
      'All dates',
      name: 'allDates',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Select date range`
  String get selectDateRange {
    return Intl.message(
      'Select date range',
      name: 'selectDateRange',
      desc: '',
      args: [],
    );
  }

  /// `Start Date`
  String get startDate {
    return Intl.message(
      'Start Date',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get endDate {
    return Intl.message(
      'End Date',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `Transaction ID`
  String get transactionID {
    return Intl.message(
      'Transaction ID',
      name: 'transactionID',
      desc: '',
      args: [],
    );
  }

  /// `Packages`
  String get packages {
    return Intl.message(
      'Packages',
      name: 'packages',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for purchasing!`
  String get thankYouForYourPurchasing {
    return Intl.message(
      'Thank you for purchasing!',
      name: 'thankYouForYourPurchasing',
      desc: '',
      args: [],
    );
  }

  /// `paid`
  String get paid {
    return Intl.message(
      'paid',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `received`
  String get received {
    return Intl.message(
      'received',
      name: 'received',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `USD`
  String get usd {
    return Intl.message(
      'USD',
      name: 'usd',
      desc: '',
      args: [],
    );
  }

  /// `Select a transaction type`
  String get selectTransactionType {
    return Intl.message(
      'Select a transaction type',
      name: 'selectTransactionType',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
