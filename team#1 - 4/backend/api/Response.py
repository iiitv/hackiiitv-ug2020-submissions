from typing import TypedDict, Union


class AlreadyLogin(TypedDict):
    error_code: int
    msg: str
    goto: str


class LoginReqResponse(TypedDict):
    error_code: int
    msg: str
    goto: str


class MeResponse(TypedDict):
    logged_in: bool
    name: Union[str, None]


class UserAlreadyExist(TypedDict):
    error_code: int
    msg: str
    goto: str


class BasicError(TypedDict):
    error_code: int
    msg: str


class RegistrationSuccess(TypedDict):
    goto: str


class LoginSuccess(TypedDict):
    goto: str


class LogoutSuccess(TypedDict):
    goto: str
