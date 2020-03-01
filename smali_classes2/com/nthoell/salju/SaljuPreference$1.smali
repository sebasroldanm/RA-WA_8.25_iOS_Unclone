.class Lcom/nthoell/salju/SaljuPreference$1;
.super Ljava/lang/Object;
.source "SaljuPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/salju/SaljuPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nthoell/salju/SaljuPreference;


# direct methods
.method constructor <init>(Lcom/nthoell/salju/SaljuPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/salju/SaljuPreference$1;->this$0:Lcom/nthoell/salju/SaljuPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    invoke-static {}, Lcom/nthoell/salju/SaljuPreference;->Restart()V

    const/4 v0, 0x0

    return v0
.end method
