.class public final LX/0Vm;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public A00:LX/0Vn;


# direct methods
.method public constructor <init>(LX/0Vn;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, LX/0Vm;->A00:LX/0Vn;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, LX/0Vm;->A00:LX/0Vn;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LX/0Vn;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "FirebaseInstanceId"

    const-string v0, "Connectivity changed. Starting background sync."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, LX/0Vm;->A00:LX/0Vn;

    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->A03(Ljava/lang/Runnable;J)V

    iget-object v0, p0, LX/0Vm;->A00:LX/0Vn;

    invoke-virtual {v0}, LX/0Vn;->A00()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, LX/0Vm;->A00:LX/0Vn;

    return-void

    :cond_1
    return-void
.end method
