.class public Lcom/whatsapp/PairedDevicesActivity$LogoutAllConfirmationDialogFragment;
.super Lcom/whatsapp/base/WaDialogFragment;
.source ""


# instance fields
.field public final A00:LX/0ur;

.field public final A01:LX/181;


# direct methods
.method public constructor <init>(LX/0ur;)V
    .locals 1

    invoke-direct {p0}, Lcom/whatsapp/base/WaDialogFragment;-><init>()V

    invoke-static {}, LX/181;->A00()LX/181;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/PairedDevicesActivity$LogoutAllConfirmationDialogFragment;->A01:LX/181;

    iput-object p1, p0, Lcom/whatsapp/PairedDevicesActivity$LogoutAllConfirmationDialogFragment;->A00:LX/0ur;

    return-void
.end method


# virtual methods
.method public A0n(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v2, LX/01N;

    invoke-virtual {p0}, LX/28X;->A08()LX/2HG;

    move-result-object v0

    invoke-direct {v2, v0}, LX/01N;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/whatsapp/PairedDevicesActivity$LogoutAllConfirmationDialogFragment;->A01:LX/181;

    const v0, 0x7f1101fc

    invoke-virtual {v1, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v2, LX/01N;->A01:LX/01I;

    iput-object v1, v0, LX/01I;->A0E:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/whatsapp/PairedDevicesActivity$LogoutAllConfirmationDialogFragment;->A01:LX/181;

    const v0, 0x7f110125

    invoke-virtual {v1, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, LX/01N;->A01(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/whatsapp/PairedDevicesActivity$LogoutAllConfirmationDialogFragment;->A01:LX/181;

    const v0, 0x7f1105e4

    invoke-virtual {v1, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, LX/0hZ;

    invoke-direct {v0, p0}, LX/0hZ;-><init>(Lcom/whatsapp/PairedDevicesActivity$LogoutAllConfirmationDialogFragment;)V

    invoke-virtual {v2, v1, v0}, LX/01N;->A03(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LX/01N;->A00()LX/27y;

    move-result-object v0

    return-object v0
.end method
