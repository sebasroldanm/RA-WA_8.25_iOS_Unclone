.class public LX/2hK;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final A00:LX/17T;

.field public final A01:LX/17X;

.field public final A02:LX/17a;

.field public final A03:LX/17b;

.field public final A04:LX/1R5;


# direct methods
.method public constructor <init>(LX/17X;LX/17T;LX/17a;LX/17b;LX/1R5;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, LX/2hK;->A01:LX/17X;

    iput-object p2, p0, LX/2hK;->A00:LX/17T;

    iput-object p3, p0, LX/2hK;->A02:LX/17a;

    iput-object p4, p0, LX/2hK;->A03:LX/17b;

    iput-object p5, p0, LX/2hK;->A04:LX/1R5;

    return-void
.end method


# virtual methods
.method public A00()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.whatsapp.alarm.REGISTRATION_TAKING_TOO_LONG_TIMEOUT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.whatsapp"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v0, p0, LX/2hK;->A01:LX/17X;

    iget-object v2, v0, LX/17X;->A00:Landroid/app/Application;

    const/4 v1, 0x0

    const/high16 v0, 0x20000000

    invoke-static {v2, v1, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LX/2hK;->A00:LX/17T;

    invoke-virtual {v0}, LX/17T;->A02()Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    iget-object v1, p0, LX/2hK;->A03:LX/17b;

    const-string v0, "registration_start_time"

    invoke-static {v1, v0}, LX/0CI;->A0T(LX/17b;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "DelayedRegistrationBroadcastReceiver/cancelRegistrationTakingTooLongAlarm AlarmManager is null"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A01(J)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.whatsapp.alarm.REGISTRATION_TAKING_TOO_LONG_TIMEOUT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.whatsapp"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v0, p0, LX/2hK;->A01:LX/17X;

    iget-object v1, v0, LX/17X;->A00:Landroid/app/Application;

    const/high16 v0, 0x8000000

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, p0, LX/2hK;->A00:LX/17T;

    invoke-virtual {v0}, LX/17T;->A02()Landroid/app/AlarmManager;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    invoke-virtual {v2, v4, p1, p2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    invoke-virtual {v2, v4, p1, p2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_1
    const-string v0, "DelayedRegistrationBroadcastReceiver/updateRegistrationTakingTooLongAlarm AlarmManager is null"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "app/regtoolong/timeout"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v0, p0, LX/2hK;->A03:LX/17b;

    iget-object v3, v0, LX/17b;->A00:Landroid/content/SharedPreferences;

    const-string v2, "registration_start_time"

    const-wide/16 v0, -0x1

    invoke-interface {v3, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/32 v5, 0x2932e00

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    cmp-long v0, v1, v5

    if-lez v0, :cond_4

    invoke-virtual {p0}, LX/2hK;->A00()V

    iget-object v0, p0, LX/2hK;->A04:LX/1R5;

    invoke-virtual {v0}, LX/1R5;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LX/2hK;->A03:LX/17b;

    invoke-virtual {v0}, LX/17b;->A0B()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, LX/2hK;->A03:LX/17b;

    invoke-virtual {v0}, LX/17b;->A0D()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, LX/2hK;->A00:LX/17T;

    invoke-virtual {v0}, LX/17T;->A0B()Landroid/telephony/TelephonyManager;

    move-result-object v4

    const-string v2, "app/registrationtakingtoolong/cc "

    const-string v1, " num="

    const-string v0, " sim="

    invoke-static {v2, v5, v1, v3, v0}, LX/0CI;->A0R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "tm_null"

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LX/2hK;->A02:LX/17a;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0}, LX/17a;->A01(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-static {v3, v2}, LX/0CI;->A11(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, LX/2hK;->A03:LX/17b;

    const-wide/16 v1, -0x2

    const-string v0, "registration_start_time"

    invoke-static {v3, v0, v1, v2}, LX/0CI;->A0V(LX/17b;Ljava/lang/String;J)V

    return-void

    :cond_2
    const-string v2, "<permission denied>"

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, LX/2hK;->A01(J)V

    return-void
.end method
