.class public Lcom/nthoell/salju/SaljuPreference;
.super Landroid/preference/PreferenceActivity;
.source "SaljuPreference.java"


# static fields
.field public static deltasettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static Restart()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method


# virtual methods
.method public getID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/nthoell/salju/SaljuPreference;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nthoell/salju/SaljuPreference;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/nthoell/salju/SaljuPreference;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/nthoell/salju/SaljuPreference;->deltasettings:Landroid/content/SharedPreferences;

    const-string v0, "salju_preference"

    const-string v1, "xml"

    invoke-virtual {p0, v0, v1}, Lcom/nthoell/salju/SaljuPreference;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nthoell/salju/SaljuPreference;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/nthoell/salju/SaljuUtils;->salju(Landroid/app/Activity;)V

    const-string v0, "restart_bbm"

    invoke-virtual {p0, v0}, Lcom/nthoell/salju/SaljuPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/nthoell/salju/SaljuPreference$1;

    invoke-direct {v1, p0}, Lcom/nthoell/salju/SaljuPreference$1;-><init>(Lcom/nthoell/salju/SaljuPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
