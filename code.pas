# script-pascal
program Greeting;

uses
  SysUtils;

var
  currentDate: TDateTime;
  hours: Integer;
  greeting: string;
  username: string;
  message: string;

begin
  currentDate := Now;
  hours := HourOf(currentDate);

  if hours < 12 then
    greeting := 'Доброе утро'
  else if hours < 18 then
    greeting := 'Добрый день'
  else
    greeting := 'Добрый вечер';

  Write('Пожалуйста, введите ваше имя: ');
  Readln(username);

  message := Format('%s, %s! Сегодня %s и время %s.', [greeting, username, DateToStr(currentDate), TimeToStr(currentDate)]);
  Writeln(message);
end.
