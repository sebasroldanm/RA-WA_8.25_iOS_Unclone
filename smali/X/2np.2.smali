.class public final synthetic LX/2np;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:I

.field private final synthetic A01:Landroid/content/Context;

.field private final synthetic A02:Landroid/net/Uri;

.field private final synthetic A03:LX/2oK;


# direct methods
.method public synthetic constructor <init>(LX/2oK;Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2np;->A03:LX/2oK;

    iput-object p2, p0, LX/2np;->A01:Landroid/content/Context;

    iput-object p3, p0, LX/2np;->A02:Landroid/net/Uri;

    iput p4, p0, LX/2np;->A00:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v5, p0, LX/2np;->A03:LX/2oK;

    iget-object v2, p0, LX/2np;->A01:Landroid/content/Context;

    iget-object v4, p0, LX/2np;->A02:Landroid/net/Uri;

    iget v3, p0, LX/2np;->A00:I

    :try_start_0
    new-instance v1, LX/3FI;

    invoke-direct {v1, v3}, LX/3FI;-><init>(I)V

    iget-object v0, v1, LX/3FI;->A00:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, v1, LX/3FI;->A00:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, v1, LX/3FI;->A00:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, v5, LX/2oK;->A00:LX/2oN;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/2oN;->A05()V

    :cond_0
    iput-object v1, v5, LX/2oK;->A00:LX/2oN;

    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "asyncaudioplayer/play/e Error playing URI: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with stream: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
