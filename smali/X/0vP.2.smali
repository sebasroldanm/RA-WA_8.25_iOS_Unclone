.class public LX/0vP;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final synthetic A00:LX/2EM;


# direct methods
.method public constructor <init>(LX/2EM;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, LX/0vP;->A00:LX/2EM;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    const-string v0, "productsgalleryfragment/onchange "

    invoke-static {v0, p1}, LX/0CI;->A0u(Ljava/lang/String;Z)V

    iget-object v1, p0, LX/0vP;->A00:LX/2EM;

    iget-object v0, v1, LX/1mS;->A01:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, LX/2EM;->A00:I

    iget-object v0, p0, LX/0vP;->A00:LX/2EM;

    iget-object v0, v0, LX/0AG;->A01:LX/0AH;

    invoke-virtual {v0}, LX/0AH;->A00()V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method
