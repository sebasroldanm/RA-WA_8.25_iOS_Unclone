.class public LX/2GN;
.super LX/232;
.source ""

# interfaces
.implements LX/1Il;


# instance fields
.field public final A00:J


# direct methods
.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LX/232;-><init>(Ljava/io/File;J)V

    iput-wide p4, p0, LX/2GN;->A00:J

    return-void
.end method


# virtual methods
.method public A53()J
    .locals 2

    iget-wide v0, p0, LX/2GN;->A00:J

    return-wide v0
.end method

.method public A5z()Ljava/lang/String;
    .locals 1

    const-string v0, "image/gif"

    return-object v0
.end method

.method public A7M()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public AKc(I)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, LX/232;->A04:Ljava/io/File;

    const/4 v0, -0x1

    invoke-static {v1, v0}, LX/2p8;->A09(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
