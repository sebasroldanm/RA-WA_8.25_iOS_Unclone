.class public final enum LX/0Xq;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final A00:[LX/0Xq;

.field public static final synthetic A01:[LX/0Xq;

.field public static final enum A02:LX/0Xq;

.field public static final enum A03:LX/0Xq;

.field public static final enum A04:LX/0Xq;

.field public static final enum A05:LX/0Xq;


# instance fields
.field public final bits:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v9, LX/0Xq;

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "L"

    invoke-direct {v9, v0, v7, v8}, LX/0Xq;-><init>(Ljava/lang/String;II)V

    sput-object v9, LX/0Xq;->A03:LX/0Xq;

    new-instance v6, LX/0Xq;

    const-string v0, "M"

    invoke-direct {v6, v0, v8, v7}, LX/0Xq;-><init>(Ljava/lang/String;II)V

    sput-object v6, LX/0Xq;->A04:LX/0Xq;

    new-instance v5, LX/0Xq;

    const/4 v4, 0x3

    const/4 v3, 0x2

    const-string v0, "Q"

    invoke-direct {v5, v0, v3, v4}, LX/0Xq;-><init>(Ljava/lang/String;II)V

    sput-object v5, LX/0Xq;->A05:LX/0Xq;

    new-instance v2, LX/0Xq;

    const-string v0, "H"

    invoke-direct {v2, v0, v4, v3}, LX/0Xq;-><init>(Ljava/lang/String;II)V

    sput-object v2, LX/0Xq;->A02:LX/0Xq;

    const/4 v1, 0x4

    new-array v0, v1, [LX/0Xq;

    aput-object v9, v0, v7

    aput-object v6, v0, v8

    aput-object v5, v0, v3

    aput-object v2, v0, v4

    sput-object v0, LX/0Xq;->A01:[LX/0Xq;

    new-array v0, v1, [LX/0Xq;

    aput-object v6, v0, v7

    aput-object v9, v0, v8

    aput-object v2, v0, v3

    aput-object v5, v0, v4

    sput-object v0, LX/0Xq;->A00:[LX/0Xq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LX/0Xq;->bits:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/0Xq;
    .locals 1

    const-class v0, LX/0Xq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LX/0Xq;

    return-object v0
.end method

.method public static values()[LX/0Xq;
    .locals 1

    sget-object v0, LX/0Xq;->A01:[LX/0Xq;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX/0Xq;

    return-object v0
.end method
