.class public LX/1ko;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/2Ru;


# instance fields
.field public final synthetic A00:Lcom/whatsapp/ContactInfo;


# direct methods
.method public constructor <init>(Lcom/whatsapp/ContactInfo;)V
    .locals 0

    iput-object p1, p0, LX/1ko;->A00:Lcom/whatsapp/ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AF6(LX/1Qe;)V
    .locals 0

    return-void
.end method

.method public AF7(LX/254;Lcom/whatsapp/jid/UserJid;)V
    .locals 3

    iget-object v0, p0, LX/1ko;->A00:Lcom/whatsapp/ContactInfo;

    invoke-virtual {v0}, Lcom/whatsapp/ContactInfo;->A0l()Lcom/whatsapp/jid/UserJid;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/whatsapp/jid/Jid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, LX/1ko;->A00:Lcom/whatsapp/ContactInfo;

    iget-object v0, v2, LX/2M7;->A0G:LX/0rz;

    new-instance v1, LX/0bG;

    invoke-direct {v1, v2}, LX/0bG;-><init>(Lcom/whatsapp/ContactInfo;)V

    iget-object v0, v0, LX/0rz;->A02:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public AF8(LX/254;Lcom/whatsapp/jid/UserJid;)V
    .locals 3

    iget-object v0, p0, LX/1ko;->A00:Lcom/whatsapp/ContactInfo;

    invoke-virtual {v0}, Lcom/whatsapp/ContactInfo;->A0l()Lcom/whatsapp/jid/UserJid;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/whatsapp/jid/Jid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, LX/1ko;->A00:Lcom/whatsapp/ContactInfo;

    iget-object v0, v2, LX/2M7;->A0G:LX/0rz;

    new-instance v1, LX/0bF;

    invoke-direct {v1, v2}, LX/0bF;-><init>(Lcom/whatsapp/ContactInfo;)V

    iget-object v0, v0, LX/0rz;->A02:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
