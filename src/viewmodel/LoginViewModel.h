#ifndef LOGINVIEWMODEL_H
#define LOGINVIEWMODEL_H
#include <QObject>
#include <QString>

class LoginViewModel : public QObject
{
    Q_OBJECT

public:
    explicit LoginViewModel(QObject *parent = nullptr);

    QString username() const;
    void setUsername(const QString &newUsername);

    QString password() const;
    void setPassword(const QString &newPassword);

    bool isLoading() const;
    QString errorMesage() const;

    Q_INVOKABLE void attemptLogin();

signals:
    void usernameChanged();
    void passwordChanged();
    void isLoadingChanged();
    void errorMessageChanged();
    void loginSuccess();

private:
    QString m_username;
    QString m_password;
    bool m_isLoading = false;
    QString m_errorMessage;
};

#endif // LOGINVIEWMODEL_H
