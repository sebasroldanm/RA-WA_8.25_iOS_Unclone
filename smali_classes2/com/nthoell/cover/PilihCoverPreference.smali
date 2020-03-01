.class public Lcom/nthoell/cover/PilihCoverPreference;
.super Landroid/preference/Preference;
.source "PilihCoverPreference.java"


# instance fields
.field private TR:Lcom/nthoell/cover/tools/TTR;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/nthoell/cover/PilihCoverPreference;->context:Landroid/content/Context;

    new-instance v0, Lcom/nthoell/cover/tools/TTR;

    iget-object v1, p0, Lcom/nthoell/cover/PilihCoverPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nthoell/cover/tools/TTR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nthoell/cover/PilihCoverPreference;->TR:Lcom/nthoell/cover/tools/TTR;

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    iget-object v0, p0, Lcom/nthoell/cover/PilihCoverPreference;->TR:Lcom/nthoell/cover/tools/TTR;

    const-class v1, Lcom/nthoell/cover/CoverPictureChanger;

    invoke-virtual {v0, v1}, Lcom/nthoell/cover/tools/TTR;->StartActivity(Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    return-void
.end method
