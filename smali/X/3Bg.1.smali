.class public LX/3Bg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/1QO;


# instance fields
.field public A00:J

.field public final A01:LX/1OU;

.field public final A02:LX/2iI;


# direct methods
.method public constructor <init>(LX/1OU;LX/2iI;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LX/3Bg;->A00:J

    iput-object p1, p0, LX/3Bg;->A01:LX/1OU;

    iput-object p2, p0, LX/3Bg;->A02:LX/2iI;

    return-void
.end method


# virtual methods
.method public declared-synchronized A00(Ljava/lang/String;)V
    .locals 15

    monitor-enter p0

    :try_start_0
    const-string v0, "routeselector/requestupdatedroutinginfo"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-wide v3, p0, LX/3Bg;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, LX/3Bg;->A01:LX/1OU;

    invoke-virtual {v0}, LX/1OU;->A02()Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, LX/3Bg;->A01:LX/1OU;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p1

    if-eqz p1, :cond_0

    new-array v2, v3, [LX/1QQ;

    new-instance v1, LX/1QQ;

    const-string v0, "last_id"

    invoke-direct {v1, v0, v4, v7, v6}, LX/1QQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V

    aput-object v1, v2, v6

    :goto_0
    new-instance v5, LX/1QX;

    const-string v0, "media_conn"

    invoke-direct {v5, v0, v2, v7, v7}, LX/1QX;-><init>(Ljava/lang/String;[LX/1QQ;[LX/1QX;[B)V

    new-instance v11, LX/1QX;

    const/4 v0, 0x4

    new-array v4, v0, [LX/1QQ;

    new-instance v2, LX/1QQ;

    sget-object v1, LX/258;->A00:LX/258;

    const-string v0, "to"

    invoke-direct {v2, v0, v1}, LX/1QQ;-><init>(Ljava/lang/String;Lcom/whatsapp/jid/Jid;)V

    aput-object v2, v4, v6

    new-instance v1, LX/1QQ;

    const-string v0, "id"

    invoke-direct {v1, v0, v10, v7, v6}, LX/1QQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V

    aput-object v1, v4, v3

    const/4 v3, 0x2

    new-instance v2, LX/1QQ;

    const-string v1, "xmlns"

    const-string v0, "w:m"

    invoke-direct {v2, v1, v0, v7, v6}, LX/1QQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V

    aput-object v2, v4, v3

    const/4 v3, 0x3

    new-instance v2, LX/1QQ;

    const-string v1, "type"

    const-string v0, "set"

    invoke-direct {v2, v1, v0, v7, v6}, LX/1QQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/whatsapp/jid/Jid;B)V

    aput-object v2, v4, v3

    const-string v0, "iq"

    invoke-direct {v11, v0, v4, v5}, LX/1QX;-><init>(Ljava/lang/String;[LX/1QQ;LX/1QX;)V

    const-wide/16 v13, 0x7d00

    const/16 v9, 0x7c

    move-object v12, p0

    invoke-virtual/range {v8 .. v14}, LX/1OU;->A0A(ILjava/lang/String;LX/1QX;LX/1QO;J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_0
    move-object v2, v7

    goto :goto_0

    :cond_1
    const-string v0, "app/sendgetmediaroutinginfo not sent"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LX/3Bg;->A00:J

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "routeselector/requestupdatedroutinginfo/not sending request; inFlightMediaRoutingRequestTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, LX/3Bg;->A00:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ABX(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, LX/3Bg;->A00:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LX/3Bg;->A02:LX/2iI;

    const/4 v0, -0x1

    check-cast v1, LX/3Bb;

    invoke-virtual {v1, v0}, LX/3Bb;->A04(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ACA(Ljava/lang/String;LX/1QX;)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, LX/3Bg;->A00:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LX/3Bg;->A02:LX/2iI;

    invoke-static {p2}, LX/11i;->A08(LX/1QX;)I

    move-result v0

    check-cast v1, LX/3Bb;

    invoke-virtual {v1, v0}, LX/3Bb;->A04(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public AGq(Ljava/lang/String;LX/1QX;)V
    .locals 39

    move-object/from16 v2, p0

    monitor-enter v2

    :try_start_0
    iget-wide v13, v2, LX/3Bg;->A00:J

    const-wide/16 v0, 0x0

    iput-wide v0, v2, LX/3Bg;->A00:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, v2, LX/3Bg;->A02:LX/2iI;

    const-string v0, "media_conn"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, LX/1QX;->A0E(Ljava/lang/String;)LX/1QX;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, LX/1QX;->A0A(Ljava/lang/String;)LX/1QQ;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v11, v2, LX/1QQ;->A03:Ljava/lang/String;

    :goto_0
    const-string v2, "auth"

    invoke-virtual {v0, v2}, LX/1QX;->A0G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v2, "ttl"

    invoke-virtual {v0, v2}, LX/1QX;->A06(Ljava/lang/String;)J

    move-result-wide v27

    const-wide/16 v2, -0x1

    const-string v4, "auth_ttl"

    invoke-virtual {v0, v4, v2, v3}, LX/1QX;->A07(Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v2, 0x0

    const-string v4, "max_buckets"

    invoke-virtual {v0, v4, v2, v3}, LX/1QX;->A07(Ljava/lang/String;J)J

    move-result-wide v30

    const/4 v3, 0x1

    const-string v2, "is_new"

    invoke-virtual {v0, v2, v3}, LX/1QX;->A05(Ljava/lang/String;I)I

    move-result v10

    const/4 v3, 0x3

    const-string v2, "max_auto_download_retry"

    invoke-virtual {v0, v2, v3}, LX/1QX;->A05(Ljava/lang/String;I)I

    move-result v37

    const-string v2, "max_manual_retry"

    invoke-virtual {v0, v2, v3}, LX/1QX;->A05(Ljava/lang/String;I)I

    move-result v38

    iget-object v4, v0, LX/1QX;->A03:[LX/1QX;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_6

    array-length v8, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_6

    aget-object v2, v4, v3

    iget-object v5, v2, LX/1QX;->A00:Ljava/lang/String;

    const-string v0, "host"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hostname"

    invoke-virtual {v2, v0}, LX/1QX;->A0G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "ip4"

    invoke-virtual {v2, v0}, LX/1QX;->A0A(Ljava/lang/String;)LX/1QQ;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v7, v0, LX/1QQ;->A03:Ljava/lang/String;

    :goto_2
    const-string v0, "ip6"

    invoke-virtual {v2, v0}, LX/1QX;->A0A(Ljava/lang/String;)LX/1QQ;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v6, v0, LX/1QQ;->A03:Ljava/lang/String;

    :goto_3
    const-string v0, "upload"

    invoke-virtual {v2, v0}, LX/1QX;->A0D(Ljava/lang/String;)LX/1QX;

    move-result-object v0

    sget-object v5, LX/2iM;->A00:Ljava/util/Set;

    invoke-static {v0, v5}, LX/2iM;->A00(LX/1QX;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v21

    const-string v0, "download"

    invoke-virtual {v2, v0}, LX/1QX;->A0D(Ljava/lang/String;)LX/1QX;

    move-result-object v0

    invoke-static {v0, v5}, LX/2iM;->A00(LX/1QX;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v22

    const-string v0, "download_buckets"

    invoke-virtual {v2, v0}, LX/1QX;->A0D(Ljava/lang/String;)LX/1QX;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {v5, v0}, LX/2iM;->A00(LX/1QX;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v23

    const-string v5, "type"

    invoke-virtual {v2, v5}, LX/1QX;->A0A(Ljava/lang/String;)LX/1QQ;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v12, v5, LX/1QQ;->A03:Ljava/lang/String;

    :goto_4
    const-string v5, "class"

    invoke-virtual {v2, v5}, LX/1QX;->A0A(Ljava/lang/String;)LX/1QQ;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, LX/1QQ;->A03:Ljava/lang/String;

    :cond_0
    new-instance v2, LX/2iG;

    move-object/from16 v24, v12

    move-object/from16 v25, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v25}, LX/2iG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v12, v0

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v29, 0x0

    new-instance v0, LX/2iK;

    const-wide/16 v3, -0x1

    cmp-long v2, v15, v3

    if-eqz v2, :cond_7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    :cond_7
    const/4 v2, 0x1

    const/16 v36, 0x0

    if-ne v10, v2, :cond_8

    const/16 v36, 0x1

    :cond_8
    move-object/from16 v25, v0

    move-object/from16 v32, v9

    move-wide/from16 v33, v13

    move-object/from16 v35, v11

    invoke-direct/range {v25 .. v38}, LX/2iK;-><init>(Ljava/lang/String;JLjava/lang/Long;JLjava/util/List;JLjava/lang/String;ZII)V

    check-cast v1, LX/3Bb;

    const-string v2, "routeselector/onreceiveroutinginfo/got a RoutingResponse with "

    invoke-static {v2}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v0, LX/2iK;->A0A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " route classes"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v2, v1, LX/3Bb;->A0B:LX/2iD;

    iget-object v2, v2, LX/2iD;->A00:LX/1Rd;

    invoke-virtual {v2}, LX/1Rd;->A02()V

    iget-object v5, v1, LX/3Bb;->A0E:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v2, v1, LX/3Bb;->A00:LX/2iK;

    if-eqz v2, :cond_a

    iget-boolean v7, v0, LX/2iK;->A0B:Z

    if-nez v7, :cond_a

    iget-object v15, v2, LX/2iK;->A0A:Ljava/util/List;

    new-instance v8, LX/2iK;

    iget-object v9, v0, LX/2iK;->A08:Ljava/lang/String;

    iget-wide v10, v0, LX/2iK;->A03:J

    iget-object v2, v0, LX/2iK;->A07:Ljava/lang/Long;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, LX/2iK;->A04:J

    iget-wide v2, v0, LX/2iK;->A05:J

    iget-object v6, v0, LX/2iK;->A09:Ljava/lang/String;

    iget v4, v0, LX/2iK;->A00:I

    iget v0, v0, LX/2iK;->A01:I

    move-wide/from16 v16, v2

    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v0

    invoke-direct/range {v8 .. v21}, LX/2iK;-><init>(Ljava/lang/String;JLjava/lang/Long;JLjava/util/List;JLjava/lang/String;ZII)V

    iput-object v8, v1, LX/3Bb;->A00:LX/2iK;

    const-string v0, "routeselector/onreceiveroutinginfo/previous hosts retained"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    :goto_6
    monitor-exit v5

    goto :goto_7

    :cond_9
    move-wide v2, v10

    goto :goto_5

    :cond_a
    iput-object v0, v1, LX/3Bb;->A00:LX/2iK;

    goto :goto_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_7
    iget-object v2, v1, LX/3Bb;->A0F:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, LX/3Bb;->A0F:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    goto :goto_8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5

    goto :goto_8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_8
    throw v0
.end method
