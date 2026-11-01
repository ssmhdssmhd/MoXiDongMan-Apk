.class public final Lokhttp3/dnsoverhttps/DnsRecordCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDnsRecordCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DnsRecordCodec.kt\nokhttp3/dnsoverhttps/DnsRecordCodec\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n679#2,9:129\n1#3:138\n*E\n*S KotlinDebug\n*F\n+ 1 DnsRecordCodec.kt\nokhttp3/dnsoverhttps/DnsRecordCodec\n*L\n46#1,9:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\nR\u0016\u0010\u0011\u001a\u00020\u00088\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00088\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00088\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0012R\u001e\u0010\u0019\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lokhttp3/dnsoverhttps/DnsRecordCodec;",
        "",
        "Lokio/Buffer;",
        "source",
        "Landroid/support/v4/ub2;",
        "skipName",
        "",
        "host",
        "",
        "type",
        "Lokio/ByteString;",
        "encodeQuery",
        "hostname",
        "byteString",
        "",
        "Ljava/net/InetAddress;",
        "decodeAnswers",
        "SERVFAIL",
        "I",
        "NXDOMAIN",
        "TYPE_A",
        "TYPE_AAAA",
        "TYPE_PTR",
        "Ljava/nio/charset/Charset;",
        "kotlin.jvm.PlatformType",
        "ASCII",
        "Ljava/nio/charset/Charset;",
        "<init>",
        "()V",
        "okhttp-dnsoverhttps"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field public static final INSTANCE:Lokhttp3/dnsoverhttps/DnsRecordCodec;

.field private static final NXDOMAIN:I = 0x3

.field private static final SERVFAIL:I = 0x2

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_AAAA:I = 0x1c

.field private static final TYPE_PTR:I = 0xc


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsRecordCodec;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsRecordCodec;-><init>()V

    sput-object v0, Lokhttp3/dnsoverhttps/DnsRecordCodec;->INSTANCE:Lokhttp3/dnsoverhttps/DnsRecordCodec;

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lokhttp3/dnsoverhttps/DnsRecordCodec;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final skipName(Lokio/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_1

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    int-to-long v0, v0

    .line 3
    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 4
    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final decodeAnswers(Ljava/lang/String;Lokio/ByteString;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 3
    invoke-virtual {v1, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 4
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    .line 5
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result p2

    const v2, 0xffff

    and-int/2addr p2, v2

    shr-int/lit8 v3, p2, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    and-int/lit8 p2, p2, 0xf

    const/4 v3, 0x3

    if-eq p2, v3, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    .line 6
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result p1

    and-int/2addr p1, v2

    .line 7
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result p2

    and-int/2addr p2, v2

    .line 8
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    .line 9
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 10
    invoke-direct {p0, v1}, Lokhttp3/dnsoverhttps/DnsRecordCodec;->skipName(Lokio/Buffer;)V

    .line 11
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    .line 12
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, p2, :cond_4

    .line 13
    invoke-direct {p0, v1}, Lokhttp3/dnsoverhttps/DnsRecordCodec;->skipName(Lokio/Buffer;)V

    .line 14
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result p1

    and-int/2addr p1, v2

    .line 15
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    .line 16
    invoke-virtual {v1}, Lokio/Buffer;->readInt()I

    .line 17
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result v3

    and-int/2addr v3, v2

    if-eq p1, v5, :cond_3

    const/16 v6, 0x1c

    if-ne p1, v6, :cond_2

    goto :goto_3

    :cond_2
    int-to-long v6, v3

    .line 18
    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->skip(J)V

    goto :goto_4

    .line 19
    :cond_3
    :goto_3
    new-array p1, v3, [B

    .line 20
    invoke-virtual {v1, p1}, Lokio/Buffer;->read([B)I

    .line 21
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    const-string v3, "InetAddress.getByAddress(bytes)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    .line 22
    :cond_5
    new-instance p2, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": SERVFAIL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_6
    new-instance p2, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": NXDOMAIN"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not a response"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final encodeQuery(Ljava/lang/String;I)Lokio/ByteString;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    const/4 v8, 0x0

    .line 2
    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    const/16 v0, 0x100

    .line 3
    invoke-virtual {v7, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    const/4 v9, 0x1

    .line 4
    invoke-virtual {v7, v9}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 5
    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 6
    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 7
    invoke-virtual {v7, v8}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 8
    new-instance v10, Lokio/Buffer;

    invoke-direct {v10}, Lokio/Buffer;-><init>()V

    new-array v1, v9, [C

    const/16 v0, 0x2e

    aput-char v0, v1, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lkotlin/text/class;->f4(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 15
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v0, v1}, Lkotlin/collections/final;->J4(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {}, Lkotlin/collections/final;->continue()Ljava/util/List;

    move-result-object v0

    .line 17
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v8, v8, v2, v3}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    cmp-long v11, v2, v4

    if-nez v11, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_4

    long-to-int v3, v2

    .line 20
    invoke-virtual {v10, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 21
    invoke-virtual {v10, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_2

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-ascii hostname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_5
    invoke-virtual {v10, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    const-wide/16 v3, 0x0

    .line 24
    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v5

    move-object v1, v10

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 25
    invoke-virtual {v7, p2}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 26
    invoke-virtual {v7, v9}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 27
    invoke-virtual {v7}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method
