.class public final LX/32Y;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements LX/2VC;


# instance fields
.field public A00:Z

.field public final synthetic A01:LX/1OK;


# direct methods
.method public constructor <init>(LX/1OK;)V
    .locals 1

    iput-object p1, p0, LX/32Y;->A01:LX/1OK;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public A00(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    iget-object v0, p0, LX/32Y;->A01:LX/1OK;

    iget-object v0, v0, LX/1OK;->A0e:LX/1On;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, LX/1Qb;

    iget-object v1, v0, LX/1On;->A06:LX/1Om;

    const/4 v0, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, LX/32Y;->A01:LX/1OK;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "iqId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v5, LX/1OK;->A0e:LX/1On;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, LX/1QX;

    iget-object v3, v1, LX/1On;->A08:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, LX/1On;->A0A:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, v1, LX/1On;->A06:LX/1Om;

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "iqId"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v5, LX/1OK;->A0W:LX/1OJ;

    check-cast v1, LX/25T;

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3
    iget-boolean v0, p0, LX/32Y;->A00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LX/32Y;->A01:LX/1OK;

    iget-object v0, v0, LX/1OK;->A02:LX/2V5;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v1, p0, LX/32Y;->A01:LX/1OK;

    iget-object v0, v1, LX/1OK;->A06:Ljava/net/Socket;

    invoke-static {v0}, LX/1OK;->A01(Ljava/net/Socket;)V

    invoke-virtual {v1, v3}, LX/1OK;->A06(Z)V

    return-void

    :catchall_0
    :try_start_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    iget-object v0, p0, LX/32Y;->A01:LX/1OK;

    invoke-virtual {v0}, LX/1OK;->A02()V

    return-void

    :cond_5
    iget-boolean v0, p0, LX/32Y;->A00:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, LX/32Y;->A01:LX/1OK;

    iget-object v0, v1, LX/1OK;->A06:Ljava/net/Socket;

    invoke-static {v0}, LX/1OK;->A01(Ljava/net/Socket;)V

    invoke-virtual {v1, v2}, LX/1OK;->A06(Z)V

    return-void

    :cond_7
    iget-object v7, p0, LX/32Y;->A01:LX/1OK;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x4

    if-eq v3, v0, :cond_8

    const/16 v0, 0x57

    if-eq v3, v0, :cond_9

    const/16 v0, 0xcd

    if-ne v3, v0, :cond_a

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, LX/1Qb;

    iget-object v2, v7, LX/1OK;->A03:LX/2VK;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "stanzaKey"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x4c

    invoke-static {v6, v5, v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_1
    check-cast v2, LX/32f;

    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v2, v7, LX/1OK;->A0K:LX/17W;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v3, v4, v0, v1}, LX/17W;->A03(JJ)J

    move-result-wide v2

    iget-object v1, v7, LX/1OK;->A0L:LX/17b;

    const-string v0, "client_server_time_diff"

    invoke-static {v1, v0, v2, v3}, LX/0CI;->A0V(LX/17b;Ljava/lang/String;J)V

    iget-object v2, v7, LX/1OK;->A03:LX/2VK;

    invoke-static {v6, v5, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    goto :goto_1

    :cond_9
    iget-object v1, v7, LX/1OK;->A02:LX/2V5;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object v2, v7, LX/1OK;->A0e:LX/1On;

    iget-object v1, v2, LX/1On;->A01:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_b

    iget-object v0, v2, LX/1On;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    const/4 v5, 0x1

    :cond_b
    if-eqz v5, :cond_c

    iget-object v2, v7, LX/1OK;->A0e:LX/1On;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v2, LX/1On;->A06:LX/1Om;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_c
    iget-object v2, v7, LX/1OK;->A0W:LX/1OJ;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    check-cast v2, LX/25T;

    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
