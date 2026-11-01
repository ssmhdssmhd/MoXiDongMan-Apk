.class public Lorg/bouncycastle/asn1/eac/new;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static break:Ljava/util/Hashtable; = null

.field public static final case:I = 0x40

.field public static catch:Landroid/support/v4/q8; = null

.field public static class:Ljava/util/Hashtable; = null

.field public static final else:I = 0x0

.field public static final for:Lorg/bouncycastle/asn1/catch;

.field public static final goto:I = 0x2

.field public static final new:I = 0xc0

.field public static final this:I = 0x1

.field public static final try:I = 0x80


# instance fields
.field public do:Lorg/bouncycastle/asn1/catch;

.field public if:Lorg/bouncycastle/asn1/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lorg/bouncycastle/asn1/catch;

    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/eac/new;->for:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/eac/new;->break:Ljava/util/Hashtable;

    new-instance v0, Landroid/support/v4/q8;

    invoke-direct {v0}, Landroid/support/v4/q8;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/eac/new;->catch:Landroid/support/v4/q8;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/eac/new;->class:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->break:Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->break:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->catch:Landroid/support/v4/q8;

    const/16 v1, 0xc0

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CVCA"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/q8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->catch:Landroid/support/v4/q8;

    const/16 v1, 0x80

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_DOMESTIC"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/q8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->catch:Landroid/support/v4/q8;

    const/16 v1, 0x40

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_FOREIGN"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/q8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->catch:Landroid/support/v4/q8;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IS"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/q8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/new;->this(Lorg/bouncycastle/asn1/catch;)V

    int-to-byte p1, p2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/new;->goto(B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/new;->break(Lorg/bouncycastle/asn1/else;)V

    :cond_0
    return-void
.end method

.method private break(Lorg/bouncycastle/asn1/else;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/new;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/do;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/asn1/do;

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/new;->if:Lorg/bouncycastle/asn1/do;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No access rights in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no Oid in CerticateHolderAuthorization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static else(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->catch:Landroid/support/v4/q8;

    invoke-static {p0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private goto(B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    new-instance p1, Lorg/bouncycastle/asn1/transient;

    const/16 v1, 0x13

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/asn1/transient;-><init>(I[B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/new;->if:Lorg/bouncycastle/asn1/do;

    return-void
.end method

.method private this(Lorg/bouncycastle/asn1/catch;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/new;->do:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public static try(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lorg/bouncycastle/asn1/eac/new;->catch:Landroid/support/v4/q8;

    invoke-virtual {v0, p0}, Landroid/support/v4/q8;->getReverse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/new;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public new()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/new;->if:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/new;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/new;->if:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/transient;

    const/16 v2, 0x4c

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/transient;-><init>(ILandroid/support/v4/import;)V

    return-object v1
.end method
