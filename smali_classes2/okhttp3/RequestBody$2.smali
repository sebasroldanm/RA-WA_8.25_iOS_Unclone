.class final Lokhttp3/RequestBody$2;
.super Lokhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/MediaType;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lokhttp3/MediaType;I[BI)V
    .locals 0

    iput-object p1, p0, Lokhttp3/RequestBody$2;->a:Lokhttp3/MediaType;

    iput p2, p0, Lokhttp3/RequestBody$2;->b:I

    iput-object p3, p0, Lokhttp3/RequestBody$2;->c:[B

    iput p4, p0, Lokhttp3/RequestBody$2;->d:I

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lokhttp3/RequestBody$2;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/RequestBody$2;->a:Lokhttp3/MediaType;

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 3

    iget-object v0, p0, Lokhttp3/RequestBody$2;->c:[B

    iget v1, p0, Lokhttp3/RequestBody$2;->d:I

    iget v2, p0, Lokhttp3/RequestBody$2;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method
