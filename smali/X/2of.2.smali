.class public LX/2of;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile A0B:LX/2of;


# instance fields
.field public A00:Ljavax/crypto/Cipher;

.field public A01:Ljavax/crypto/Cipher;

.field public A02:Ljavax/crypto/Cipher;

.field public A03:Ljavax/crypto/Cipher;

.field public A04:Ljavax/crypto/Cipher;

.field public A05:Ljavax/crypto/Cipher;

.field public A06:Ljavax/crypto/Cipher;

.field public A07:Ljavax/crypto/Cipher;

.field public A08:Ljavax/crypto/Cipher;

.field public A09:Ljavax/crypto/Cipher;

.field public A0A:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()LX/2of;
    .locals 2

    sget-object v0, LX/2of;->A0B:LX/2of;

    if-nez v0, :cond_1

    const-class v1, LX/2of;

    monitor-enter v1

    :try_start_0
    sget-object v0, LX/2of;->A0B:LX/2of;

    if-nez v0, :cond_0

    new-instance v0, LX/2of;

    invoke-direct {v0}, LX/2of;-><init>()V

    sput-object v0, LX/2of;->A0B:LX/2of;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object v0, LX/2of;->A0B:LX/2of;

    return-object v0
.end method

.method public static final A01(Ljava/io/InputStream;Ljavax/crypto/Cipher;[B[BLjava/util/concurrent/atomic/AtomicLong;)Ljava/io/InputStream;
    .locals 3

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v0, LX/2oc;

    invoke-direct {v0, p0, p1, p4}, LX/2oc;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static final A02(Ljava/io/OutputStream;Ljavax/crypto/Cipher;[B[B)Ljava/io/OutputStream;
    .locals 3

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized A03(Ljava/io/OutputStream;LX/2od;[B[B)Ljava/io/OutputStream;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LX/2of;->A04()V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    iget-object v4, p0, LX/2of;->A07:Ljavax/crypto/Cipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v1, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, p1, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v0, 0x0

    invoke-direct {v1, v5, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {v3, v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    goto :goto_0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v0, "encrypter/encrypt/invalidalgparam"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v0, "encrypter/encrypt/invalidkey"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_0
    move-object p1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_3
    iget-object v0, p0, LX/2of;->A06:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, p3, p4}, LX/2of;->A02(Ljava/io/OutputStream;Ljavax/crypto/Cipher;[B[B)Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_4
    iget-object v0, p0, LX/2of;->A05:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, p3, p4}, LX/2of;->A02(Ljava/io/OutputStream;Ljavax/crypto/Cipher;[B[B)Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_5
    iget-object v0, p0, LX/2of;->A09:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, p3, p4}, LX/2of;->A02(Ljava/io/OutputStream;Ljavax/crypto/Cipher;[B[B)Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_6
    iget-object v0, p0, LX/2of;->A08:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, p3, p4}, LX/2of;->A02(Ljava/io/OutputStream;Ljavax/crypto/Cipher;[B[B)Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LX/2of;->A0A:Z

    if-nez v0, :cond_0

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A08:Ljavax/crypto/Cipher;

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A09:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A05:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A06:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A07:Ljavax/crypto/Cipher;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A03:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A04:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A00:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A01:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LX/2of;->A02:Ljavax/crypto/Cipher;

    const/4 v0, 0x1

    iput-boolean v0, p0, LX/2of;->A0A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public A05(Ljava/io/InputStream;Ljava/io/OutputStream;IIJLX/1Bz;LX/2od;[B[B)V
    .locals 11

    invoke-virtual {p0}, LX/2of;->A04()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    move-object v7, p0

    monitor-enter v7

    :try_start_0
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    move-object/from16 v4, p10

    move-object/from16 v6, p9

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    iget-object v5, p0, LX/2of;->A02:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v1, v6, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v4, Ljava/util/zip/InflaterInputStream;

    new-instance v2, LX/2oc;

    invoke-direct {v2, p1, v5, v3}, LX/2oc;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;Ljava/util/concurrent/atomic/AtomicLong;)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v4, v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LX/2of;->A01:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, v6, v4, v3}, LX/2of;->A01(Ljava/io/InputStream;Ljavax/crypto/Cipher;[B[BLjava/util/concurrent/atomic/AtomicLong;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LX/2of;->A00:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, v6, v4, v3}, LX/2of;->A01(Ljava/io/InputStream;Ljavax/crypto/Cipher;[B[BLjava/util/concurrent/atomic/AtomicLong;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LX/2of;->A04:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, v6, v4, v3}, LX/2of;->A01(Ljava/io/InputStream;Ljavax/crypto/Cipher;[B[BLjava/util/concurrent/atomic/AtomicLong;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, LX/2of;->A03:Ljavax/crypto/Cipher;

    invoke-static {p1, v0, v6, v4, v3}, LX/2of;->A01(Ljava/io/InputStream;Ljavax/crypto/Cipher;[B[BLjava/util/concurrent/atomic/AtomicLong;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :goto_0
    move-object p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_4
    :goto_1
    monitor-exit v7

    const/high16 v0, 0x20000

    :try_start_1
    new-array v2, v0, [B

    :cond_5
    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v4, p7

    if-eqz p7, :cond_5

    move v10, p4

    if-lez p4, :cond_5

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-wide/from16 v7, p5

    move v9, p3

    invoke-interface/range {v4 .. v10}, LX/1Bz;->AHT(JJII)V

    goto :goto_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_7

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_7
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v7

    throw v0
.end method
