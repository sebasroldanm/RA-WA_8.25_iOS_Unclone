.class public final synthetic LX/2gd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic A00:I

.field private final synthetic A01:Lcom/whatsapp/registration/VerifySms;


# direct methods
.method public synthetic constructor <init>(Lcom/whatsapp/registration/VerifySms;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2gd;->A01:Lcom/whatsapp/registration/VerifySms;

    iput p2, p0, LX/2gd;->A00:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v5, p0, LX/2gd;->A01:Lcom/whatsapp/registration/VerifySms;

    iget v0, p0, LX/2gd;->A00:I

    invoke-static {v5, v0}, LX/01Y;->A17(Landroid/app/Activity;I)V

    const/4 v4, 0x0

    sput v4, Lcom/whatsapp/registration/VerifySms;->A0q:I

    invoke-virtual {v5}, Lcom/whatsapp/registration/VerifySms;->A0o()V

    iget-object v1, v5, Lcom/whatsapp/registration/VerifySms;->A0k:LX/1R4;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LX/1R4;->A0C(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/whatsapp/registration/VerifySms;->A0K:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/whatsapp/registration/VerifySms;->A0L:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    iput-object v2, v5, Lcom/whatsapp/registration/VerifySms;->A0L:Ljava/lang/String;

    iget-object v1, v5, Lcom/whatsapp/registration/VerifySms;->A0e:LX/1H7;

    const-string v0, "verify-tma "

    invoke-static {v0, v3}, LX/0CI;->A0D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0, v4, v2}, LX/1H7;->A01(LX/2M7;Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method
