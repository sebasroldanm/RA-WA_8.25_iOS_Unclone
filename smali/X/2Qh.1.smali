.class public final synthetic LX/2Qh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic A00:LX/30M;


# direct methods
.method public synthetic constructor <init>(LX/30M;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2Qh;->A00:LX/30M;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v3, p0, LX/2Qh;->A00:LX/30M;

    iget-object v2, v3, LX/30M;->A0E:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v1, v3, LX/30M;->A0E:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-static {v1, v0}, LX/01Y;->A17(Landroid/app/Activity;I)V

    return-void
.end method
