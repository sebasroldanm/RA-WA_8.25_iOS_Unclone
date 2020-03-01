.class public Lcom/nthoell/cover/IncompatibleRatioException;
.super Ljava/lang/RuntimeException;
.source "IncompatibleRatioException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Can\'t perform Ken Burns effect on rects with distinct aspect ratios!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
