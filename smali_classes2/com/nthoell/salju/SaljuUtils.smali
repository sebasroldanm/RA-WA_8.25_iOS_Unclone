.class public Lcom/nthoell/salju/SaljuUtils;
.super Ljava/lang/Object;
.source "SaljuUtils.java"


# static fields
.field private static floatSpeed:F

.field private static intensitas:I

.field private static speed:I

.field private static str:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/nthoell/salju/SaljuUtils;->floatSpeed:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    return-void
.end method

.method public static getAnimatDrawable(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/nthoell/salju/SaljuUtils;->setAnimationImage(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static salju(Landroid/app/Activity;)V
    .locals 4

    move-object v0, p0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "salju"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/nthoell/salju/SaljuUtils;->str:Z

    const-string v2, "intensitas"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/nthoell/salju/SaljuUtils;->intensitas:I

    const-string v2, "speed"

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/nthoell/salju/SaljuUtils;->speed:I

    const v2, 0x358637bd    # 1.0E-6f

    sget v3, Lcom/nthoell/salju/SaljuUtils;->speed:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sput v2, Lcom/nthoell/salju/SaljuUtils;->floatSpeed:F

    sget-boolean v2, Lcom/nthoell/salju/SaljuUtils;->str:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/nthoell/salju/SaljuUtils;->intensitas:I

    sget v3, Lcom/nthoell/salju/SaljuUtils;->floatSpeed:F

    invoke-static {p0, v2, v3}, Lcom/nthoell/salju/SaljuUtils;->start(Landroid/app/Activity;IF)V

    :cond_0
    return-void
.end method

.method public static setAnimationImage(Landroid/content/Context;)I
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "animation_drawable"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "snow"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "air"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "daun"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bunga"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bubblez"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "hujan"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "seratus"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dolar"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static setRotation(Landroid/content/Context;)I
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "rotation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x90

    goto :goto_0
.end method

.method private static start(Landroid/app/Activity;IF)V
    .locals 13

    const/16 v12, -0xc8

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const v9, 0x3dcccccd    # 0.1f

    const/4 v8, 0x0

    move-object v1, p0

    move v7, p1

    move v6, p2

    new-instance v0, Lcom/plattysoft/leonids/ParticleSystem;

    const/16 v2, 0x78

    invoke-static {v1}, Lcom/nthoell/salju/SaljuUtils;->getAnimatDrawable(Landroid/content/Context;)I

    move-result v3

    const-wide/16 v4, 0x2710

    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IIJ)V

    const/16 v2, 0xb4

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v9, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->setSpeedModuleAndAngleRange(FFII)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/plattysoft/leonids/ParticleSystem;->setScaleRange(FF)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    invoke-static {v1}, Lcom/nthoell/salju/SaljuUtils;->setRotation(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/plattysoft/leonids/ParticleSystem;->setRotationSpeed(F)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    const/16 v2, 0x5a

    invoke-virtual {v0, v6, v2}, Lcom/plattysoft/leonids/ParticleSystem;->setAcceleration(FI)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v12, v7}, Lcom/plattysoft/leonids/ParticleSystem;->emit(III)V

    new-instance v0, Lcom/plattysoft/leonids/ParticleSystem;

    const/16 v2, 0x78

    invoke-static {v1}, Lcom/nthoell/salju/SaljuUtils;->getAnimatDrawable(Landroid/content/Context;)I

    move-result v3

    const-wide/16 v4, 0x2710

    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IIJ)V

    const/16 v2, 0xb4

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v9, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->setSpeedModuleAndAngleRange(FFII)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/plattysoft/leonids/ParticleSystem;->setScaleRange(FF)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    invoke-static {v1}, Lcom/nthoell/salju/SaljuUtils;->setRotation(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/plattysoft/leonids/ParticleSystem;->setRotationSpeed(F)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    const/16 v2, 0x5a

    invoke-virtual {v0, v6, v2}, Lcom/plattysoft/leonids/ParticleSystem;->setAcceleration(FI)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v12, v7}, Lcom/plattysoft/leonids/ParticleSystem;->emit(III)V

    new-instance v0, Lcom/plattysoft/leonids/ParticleSystem;

    const/16 v2, 0x78

    invoke-static {v1}, Lcom/nthoell/salju/SaljuUtils;->getAnimatDrawable(Landroid/content/Context;)I

    move-result v3

    const-wide/16 v4, 0x2710

    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IIJ)V

    const/16 v2, 0xb4

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v9, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->setSpeedModuleAndAngleRange(FFII)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/plattysoft/leonids/ParticleSystem;->setScaleRange(FF)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    invoke-static {v1}, Lcom/nthoell/salju/SaljuUtils;->setRotation(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/plattysoft/leonids/ParticleSystem;->setRotationSpeed(F)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    const/16 v2, 0x5a

    invoke-virtual {v0, v6, v2}, Lcom/plattysoft/leonids/ParticleSystem;->setAcceleration(FI)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    const/16 v2, 0x190

    invoke-virtual {v0, v2, v12, v7}, Lcom/plattysoft/leonids/ParticleSystem;->emit(III)V

    return-void
.end method
