.class public Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;
.super Lcom/whatsapp/base/WaDialogFragment;
.source ""


# instance fields
.field public final A00:LX/13q;

.field public final A01:LX/181;

.field public final A02:LX/1Aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/whatsapp/base/WaDialogFragment;-><init>()V

    invoke-static {}, LX/1Aa;->A00()LX/1Aa;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A02:LX/1Aa;

    invoke-static {}, LX/13q;->A00()LX/13q;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A00:LX/13q;

    invoke-static {}, LX/181;->A00()LX/181;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A01:LX/181;

    return-void
.end method


# virtual methods
.method public A0n(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    iget-object v6, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A01:LX/181;

    const v5, 0x7f1109d8

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A00:LX/13q;

    iget-object v2, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A02:LX/1Aa;

    iget-object v1, p0, LX/28X;->A06:Landroid/os/Bundle;

    const-string v0, "jid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX/1Ru;->A05(Ljava/lang/Object;)V

    invoke-static {v0}, LX/2NJ;->A05(Ljava/lang/String;)LX/2NJ;

    move-result-object v0

    invoke-virtual {v2, v0}, LX/1Aa;->A0B(LX/254;)LX/1DL;

    move-result-object v0

    invoke-virtual {v3, v0}, LX/13q;->A04(LX/1DL;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v4, v0

    invoke-virtual {v6, v5, v4}, LX/181;->A0C(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, LX/01N;

    invoke-virtual {p0}, LX/28X;->A00()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, LX/01N;-><init>(Landroid/content/Context;)V

    iget-object v0, v3, LX/01N;->A01:LX/01I;

    iput-object v1, v0, LX/01I;->A0E:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A01:LX/181;

    const v0, 0x7f1109d6

    invoke-virtual {v1, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, LX/0ko;

    invoke-direct {v0, p0}, LX/0ko;-><init>(Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;)V

    invoke-virtual {v3, v1, v0}, LX/01N;->A03(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/whatsapp/ShareInviteLinkActivity$RevokeLinkConfirmationDialogFragment;->A01:LX/181;

    const/4 v1, 0x0

    const v0, 0x7f110125

    invoke-virtual {v2, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, LX/01N;->A01(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, LX/01N;->A00()LX/27y;

    move-result-object v0

    return-object v0
.end method
