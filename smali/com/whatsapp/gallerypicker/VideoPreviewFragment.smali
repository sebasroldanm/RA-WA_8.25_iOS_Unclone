.class public Lcom/whatsapp/gallerypicker/VideoPreviewFragment;
.super Lcom/whatsapp/gallerypicker/MediaPreviewFragment;
.source ""


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Landroid/view/View;

.field public A06:Landroid/view/View;

.field public A07:Landroid/view/View;

.field public A08:Landroid/widget/ImageView;

.field public A09:Landroid/widget/TextView;

.field public A0A:Landroid/widget/TextView;

.field public A0B:Landroid/widget/TextView;

.field public A0C:Lcom/whatsapp/VideoTimelineView;

.field public A0D:LX/2p7;

.field public A0E:LX/2r9;

.field public A0F:Ljava/io/File;

.field public A0G:Z

.field public A0H:Z

.field public final A0I:LX/0qj;

.field public final A0J:LX/0tT;

.field public final A0K:LX/0wD;

.field public final A0L:LX/17T;

.field public final A0M:LX/181;

.field public final A0N:LX/2Tx;

.field public final A0O:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;-><init>()V

    const/16 v0, 0x280

    iput v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A00:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A02:J

    invoke-static {}, LX/0tT;->A00()LX/0tT;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0J:LX/0tT;

    sget-object v0, LX/0qj;->A00:LX/0qj;

    invoke-static {v0}, LX/1Ru;->A05(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0I:LX/0qj;

    invoke-static {}, LX/0wD;->A0D()LX/0wD;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0K:LX/0wD;

    invoke-static {}, LX/17T;->A00()LX/17T;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0L:LX/17T;

    invoke-static {}, LX/2Tx;->A01()LX/2Tx;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0N:LX/2Tx;

    invoke-static {}, LX/181;->A00()LX/181;

    move-result-object v0

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0M:LX/181;

    new-instance v0, LX/1JI;

    invoke-direct {v0, p0}, LX/1JI;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0O:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public A0Y()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LX/28X;->A0U:Z

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0O:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A09()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    :cond_0
    return-void
.end method

.method public A0b(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v5, p0

    move-object/from16 v10, p2

    move-object/from16 v6, p1

    invoke-super {v5, v6, v10}, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A0b(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, LX/1Ru;->A09(Z)V

    invoke-virtual {v5}, LX/28X;->A08()LX/2HG;

    move-result-object v4

    check-cast v4, LX/1J1;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A00:Landroid/net/Uri;

    invoke-interface {v4, v0}, LX/1J1;->A5D(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A00:Landroid/net/Uri;

    invoke-interface {v4, v0}, LX/1J1;->A7T(Landroid/net/Uri;)LX/2p7;

    move-result-object v0

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v1, LX/2p7;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    invoke-direct {v1, v0}, LX/2p7;-><init>(Ljava/io/File;)V

    iput-object v1, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    goto :goto_0
    :try_end_0
    .catch LX/3FX; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v0, "videopreview/bad video"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-virtual {v5}, LX/28X;->A01()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    invoke-static {v1, v0, v8}, LX/2r9;->A00(Landroid/content/Context;Ljava/io/File;Z)LX/2r9;

    move-result-object v0

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    iget-object v1, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A00:Landroid/net/Uri;

    invoke-interface {v4}, LX/1J1;->A45()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v5}, LX/28X;->A08()LX/2HG;

    move-result-object v0

    invoke-static {v0}, LX/1Vq;->A0E(Landroid/app/Activity;)V

    :cond_2
    iget-object v0, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A00:Landroid/net/Uri;

    invoke-interface {v4, v0}, LX/1J1;->A6z(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0G:Z

    iget-object v2, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0N:LX/2Tx;

    const/4 v1, 0x3

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    invoke-virtual {v2, v1, v0}, LX/2Tx;->A03(BLjava/io/File;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0H:Z

    const-wide/16 v0, 0x0

    iput-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A03:J

    iget-object v2, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget-wide v0, v2, LX/2p7;->A04:J

    iput-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A04:J

    const/16 v11, 0x280

    iget v3, v2, LX/2p7;->A03:I

    iget v2, v2, LX/2p7;->A01:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A00:I

    iput-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A01:J

    invoke-interface {v4}, LX/1J1;->A5d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_9

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/whatsapp/jid/Jid;

    invoke-static {v0}, LX/1Ha;->A0q(Lcom/whatsapp/jid/Jid;)Z

    move-result v16

    :goto_1
    sget-object v0, LX/2Jp;->A00:LX/2Jp;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    :goto_2
    const v0, 0x7f0909b2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A07:Landroid/view/View;

    const v0, 0x7f09068e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A05:Landroid/view/View;

    new-instance v0, LX/1IX;

    invoke-direct {v0, v5}, LX/1IX;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09085f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0A:Landroid/widget/TextView;

    const v0, 0x7f0902d7

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A09:Landroid/widget/TextView;

    const v0, 0x7f09097f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0B:Landroid/widget/TextView;

    const v0, 0x7f090980

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A06:Landroid/view/View;

    const v0, 0x7f0909b5

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A08:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0y()J

    move-result-wide v13

    invoke-static {}, LX/0wD;->A08()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v11, 0x100000

    mul-long/2addr v0, v11

    cmp-long v2, v13, v0

    if-lez v2, :cond_3

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget-wide v2, v0, LX/2p7;->A04:J

    invoke-static {}, LX/0wD;->A08()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v2, v0

    mul-long/2addr v2, v11

    div-long/2addr v2, v13

    iput-wide v2, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A01:J

    :cond_3
    iget-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A01:J

    invoke-static {}, LX/0wD;->A0C()J

    move-result-wide v11

    cmp-long v2, v0, v11

    if-lez v2, :cond_6

    if-eqz v16, :cond_4

    invoke-static {}, LX/0wD;->A0C()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A01:J

    :cond_4
    if-nez v16, :cond_5

    if-eqz v15, :cond_6

    :cond_5
    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0J:LX/0tT;

    invoke-virtual {v0}, LX/0tT;->A02()V

    :cond_6
    iget-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A01:J

    iput-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A04:J

    invoke-virtual {v5}, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0y()J

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A00:Landroid/net/Uri;

    invoke-interface {v4, v0}, LX/1J1;->A7L(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-long v0, v0

    iput-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A03:J

    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    iput-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A04:J

    :cond_7
    const v0, 0x7f09092b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/whatsapp/VideoTimelineView;

    iput-object v11, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0C:Lcom/whatsapp/VideoTimelineView;

    iget-object v13, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget-wide v0, v0, LX/2p7;->A04:J

    iput-object v13, v11, Lcom/whatsapp/VideoTimelineView;->A0K:Ljava/io/File;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/whatsapp/VideoTimelineView;->A0L:Ljava/util/ArrayList;

    iget-object v2, v11, Lcom/whatsapp/VideoTimelineView;->A0J:LX/1S5;

    if-eqz v2, :cond_8

    iget-object v2, v2, LX/1S5;->A00:LX/1S4;

    invoke-virtual {v2, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v12, v11, Lcom/whatsapp/VideoTimelineView;->A0J:LX/1S5;

    :cond_8
    const-wide/16 v2, 0x0

    if-eqz v13, :cond_c

    cmp-long v12, v0, v2

    if-nez v12, :cond_b

    new-instance v12, LX/2SO;

    invoke-direct {v12}, LX/2SO;-><init>()V

    goto :goto_3

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_2

    :goto_3
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v11, Lcom/whatsapp/VideoTimelineView;->A0D:J

    goto :goto_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v12}, LX/2SO;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    throw v0

    :cond_b
    iput-wide v0, v11, Lcom/whatsapp/VideoTimelineView;->A0D:J

    goto :goto_5

    :cond_c
    iput-wide v2, v11, Lcom/whatsapp/VideoTimelineView;->A0D:J

    goto :goto_5

    :goto_4
    invoke-virtual {v12}, LX/2SO;->close()V

    :goto_5
    iput-wide v2, v11, Lcom/whatsapp/VideoTimelineView;->A0F:J

    iget-wide v0, v11, Lcom/whatsapp/VideoTimelineView;->A0D:J

    iput-wide v0, v11, Lcom/whatsapp/VideoTimelineView;->A0G:J

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    iget-object v11, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0C:Lcom/whatsapp/VideoTimelineView;

    iget-wide v2, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A03:J

    iget-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A04:J

    iput-wide v2, v11, Lcom/whatsapp/VideoTimelineView;->A0F:J

    iput-wide v0, v11, Lcom/whatsapp/VideoTimelineView;->A0G:J

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    iget-object v11, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0C:Lcom/whatsapp/VideoTimelineView;

    iget-boolean v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0G:Z

    if-eqz v0, :cond_15

    iget-wide v2, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A01:J

    const-wide/16 v0, 0x7997

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_6
    iput-wide v0, v11, Lcom/whatsapp/VideoTimelineView;->A0E:J

    new-instance v0, LX/22y;

    invoke-direct {v0, v5}, LX/22y;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    iput-object v0, v11, Lcom/whatsapp/VideoTimelineView;->A0H:LX/0xh;

    new-instance v0, LX/22z;

    invoke-direct {v0, v5}, LX/22z;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    iput-object v0, v11, Lcom/whatsapp/VideoTimelineView;->A0I:LX/0xi;

    iget-object v1, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    new-instance v0, LX/22D;

    invoke-direct {v0, v5}, LX/22D;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    iput-object v0, v1, LX/2r9;->A01:LX/2r5;

    invoke-virtual {v1}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/whatsapp/videoplayback/VideoSurfaceView;

    if-eqz v0, :cond_d

    invoke-virtual {v1}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/whatsapp/videoplayback/VideoSurfaceView;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    invoke-virtual {v0}, LX/2p7;->A02()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v11, v0, LX/2p7;->A01:I

    :goto_7
    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    invoke-virtual {v0}, LX/2p7;->A02()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v2, v0, LX/2p7;->A03:I

    :goto_8
    const-string v1, "videoview/setVideoDimensions: "

    const-string v0, "x"

    invoke-static {v1, v11, v0, v2}, LX/0CI;->A0f(Ljava/lang/String;ILjava/lang/String;I)V

    iput v11, v3, Lcom/whatsapp/videoplayback/VideoSurfaceView;->A08:I

    iput v2, v3, Lcom/whatsapp/videoplayback/VideoSurfaceView;->A07:I

    new-instance v2, LX/230;

    invoke-direct {v2, v5}, LX/230;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    new-instance v1, LX/231;

    invoke-direct {v1, v5, v3}, LX/231;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;Lcom/whatsapp/videoplayback/VideoSurfaceView;)V

    invoke-interface {v4}, LX/1J1;->A5u()LX/1JA;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2, v1}, LX/1JA;->A03(LX/1J6;LX/1J7;)V

    :cond_d
    if-nez p2, :cond_e

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A00:Landroid/net/Uri;

    invoke-interface {v4, v0}, LX/1J1;->A52(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_12

    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    invoke-virtual {v0}, LX/2p7;->A02()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v0, v0, LX/2p7;->A01:I

    :goto_9
    int-to-float v1, v0

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    invoke-virtual {v0}, LX/2p7;->A02()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v0, v0, LX/2p7;->A03:I

    :goto_a
    int-to-float v0, v0

    invoke-direct {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A01:LX/1Ef;

    iget-object v0, v0, LX/1Ef;->A0G:Lcom/whatsapp/doodle/DoodleView;

    invoke-virtual {v0, v2}, Lcom/whatsapp/doodle/DoodleView;->setBitmapRect(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2}, Lcom/whatsapp/doodle/DoodleView;->setCropRect(Landroid/graphics/RectF;)V

    :cond_e
    :goto_b
    const v0, 0x7f0909bb

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v3

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v0, -0x1

    invoke-direct {v2, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    iget-wide v1, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A03:J

    long-to-int v0, v1

    add-int/2addr v0, v9

    invoke-virtual {v3, v0}, LX/2r9;->A0A(I)V

    const v0, 0x7f0901fb

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    shl-int/lit8 v2, v0, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {v6, v3, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, LX/1IZ;

    invoke-direct {v0, v5}, LX/1IZ;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A00:Landroid/net/Uri;

    invoke-interface {v4}, LX/1J1;->A45()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v1, v5, LX/28X;->A0B:Landroid/view/View;

    invoke-static {v1}, LX/1Ru;->A03(Landroid/view/View;)V

    const v0, 0x7f090230

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v0, v0, LX/2p7;->A01:I

    goto :goto_a

    :cond_11
    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v0, v0, LX/2p7;->A03:I

    goto/16 :goto_9

    :cond_12
    new-instance v10, LX/1FS;

    invoke-direct {v10}, LX/1FS;-><init>()V

    :try_start_4
    invoke-virtual {v5}, LX/28X;->A01()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A09:LX/1G3;

    iget-object v14, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0K:LX/0wD;

    iget-object v15, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0M:LX/181;

    iget-object v0, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A0B:LX/2lx;

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, LX/1FS;->A08(Ljava/lang/String;Landroid/content/Context;LX/1G3;LX/0wD;LX/181;LX/2lx;)V

    goto :goto_c
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    const-string v0, "videopreview/error-loading-doodle"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    iget-object v1, v5, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A01:LX/1Ef;

    iget-object v0, v1, LX/1Ef;->A0G:Lcom/whatsapp/doodle/DoodleView;

    invoke-virtual {v0, v10}, Lcom/whatsapp/doodle/DoodleView;->setDoodle(LX/1FS;)V

    invoke-virtual {v1, v8}, LX/1Ef;->A0D(Z)V

    goto/16 :goto_b

    :cond_13
    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v2, v0, LX/2p7;->A01:I

    goto/16 :goto_8

    :cond_14
    iget-object v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v11, v0, LX/2p7;->A03:I

    goto/16 :goto_7

    :cond_15
    iget-wide v0, v5, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A01:J

    goto/16 :goto_6
.end method

.method public A0c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v1, 0x7f0c0276

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A0e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LX/28X;->A0U:Z

    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->AHl()Z

    return-void
.end method

.method public A0f()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LX/28X;->A0U:Z

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v1}, LX/2r9;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, LX/2r9;->A0A(I)V

    return-void
.end method

.method public A0t()V
    .locals 1

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A02:LX/1I9;

    invoke-virtual {v0}, LX/1I9;->A01()V

    return-void
.end method

.method public A0u(Landroid/graphics/Rect;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A0u(Landroid/graphics/Rect;)V

    iget-object v0, p0, LX/28X;->A0B:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A07:Landroid/view/View;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, LX/28X;->A02()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f07004f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, LX/28X;->A02()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v6, v5, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A06:Landroid/view/View;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x0

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public A0v(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f090264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A0v(Landroid/view/View;)V

    iget-object v2, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A08:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0G:Z

    const v0, 0x7f08025b

    if-eqz v1, :cond_0

    const v0, 0x7f08025c

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A08:Landroid/widget/ImageView;

    new-instance v0, LX/1IY;

    invoke-direct {v0, p0}, LX/1IY;-><init>(Lcom/whatsapp/gallerypicker/VideoPreviewFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-wide v3, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A04:J

    iget-wide v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A03:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x7997

    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A08:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A08:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final A0y()J
    .locals 11

    iget-wide v5, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A04:J

    iget-wide v7, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A03:J

    sub-long v3, v5, v7

    const-wide/16 v9, 0x3e8

    cmp-long v0, v3, v9

    if-gez v0, :cond_0

    const-wide/16 v3, 0x3e8

    :cond_0
    iget-boolean v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0H:Z

    if-nez v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v0, v7, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget-wide v1, v0, LX/2p7;->A04:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {}, LX/0wD;->A08()I

    move-result v0

    int-to-long v5, v0

    const-wide/32 v0, 0x100000

    mul-long/2addr v5, v0

    cmp-long v0, v7, v5

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    :goto_0
    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A09:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0M:LX/181;

    div-long/2addr v3, v9

    invoke-static {v0, v3, v4}, LX/01Y;->A0g(LX/181;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0M:LX/181;

    invoke-static {v0, v5, v6}, LX/11i;->A1C(LX/181;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-wide v5

    :cond_1
    invoke-static {}, LX/1sC;->A01()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0H:Z

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget-boolean v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0G:Z

    const/4 v0, 0x3

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    :cond_2
    invoke-virtual {v2, v0}, LX/2p7;->A03(B)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    mul-long/2addr v5, v3

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget-wide v0, v0, LX/2p7;->A04:J

    div-long/2addr v5, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0D:LX/2p7;

    iget v2, v0, LX/2p7;->A03:I

    iget v0, v0, LX/2p7;->A01:I

    iget v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A00:I

    if-lt v2, v0, :cond_7

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    move v2, v1

    move v1, v0

    :goto_1
    mul-int v0, v2, v1

    int-to-float v5, v0

    iget-boolean v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0G:Z

    if-eqz v0, :cond_6

    const/high16 v0, 0x40000000    # 2.0f

    :goto_2
    mul-float/2addr v5, v0

    iget-boolean v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0G:Z

    const v0, 0x47bb8000    # 96000.0f

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    add-float/2addr v5, v0

    div-long v1, v3, v9

    long-to-float v0, v1

    mul-float/2addr v5, v0

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr v5, v0

    float-to-long v5, v5

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    invoke-static {v2, v1, v3, v4, v0}, LX/2Tx;->A00(IIJI)F

    move-result v0

    goto :goto_2

    :cond_7
    mul-int/2addr v2, v1

    div-int/2addr v2, v0

    goto :goto_1
.end method

.method public final A0z()V
    .locals 6

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->AHl()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A02()I

    move-result v0

    int-to-long v4, v0

    iget-wide v2, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A04:J

    const-wide/16 v0, 0x7d0

    sub-long/2addr v2, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    iget-wide v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A03:J

    long-to-int v0, v1

    invoke-virtual {v3, v0}, LX/2r9;->A0A(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->AKM()V

    return-void
.end method

.method public A4B()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A04()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0F:Ljava/io/File;

    const/4 v0, -0x1

    invoke-static {v1, v0}, LX/2p8;->A09(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public AHl()Z
    .locals 5

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A0C()Z

    move-result v4

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A06()V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A02()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A02:J

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A01:LX/1Ef;

    iget-object v0, v0, LX/1Ef;->A0G:Lcom/whatsapp/doodle/DoodleView;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/whatsapp/doodle/DoodleView;->A0U:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A05:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A05:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return v4
.end method

.method public AKM()V
    .locals 5

    sget-object v0, LX/0u8;->A0h:LX/0u8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/0u8;->A09()V

    :cond_0
    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    iget-boolean v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0G:Z

    invoke-virtual {v1, v0}, LX/2r9;->A0B(Z)V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A08()V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/MediaPreviewFragment;->A01:LX/1Ef;

    iget-object v2, v0, LX/1Ef;->A0G:Lcom/whatsapp/doodle/DoodleView;

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/whatsapp/doodle/DoodleView;->A0U:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/whatsapp/doodle/DoodleView;->A0C:J

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0O:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0E:LX/2r9;

    invoke-virtual {v0}, LX/2r9;->A05()Landroid/view/View;

    move-result-object v3

    iget-object v2, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A0O:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const-wide/16 v2, 0xc8

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/VideoPreviewFragment;->A05:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
