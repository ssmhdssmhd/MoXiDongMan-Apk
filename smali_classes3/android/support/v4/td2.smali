.class public Landroid/support/v4/td2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final goto:[Lorg/bouncycastle/asn1/super;


# instance fields
.field private case:Landroid/support/v4/y90;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Landroid/support/v4/import;

.field private for:Landroid/support/v4/tg2;

.field private if:Landroid/support/v4/b1;

.field private new:Landroid/support/v4/t62;

.field private try:Landroid/support/v4/t62;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/bouncycastle/asn1/super;

    sput-object v0, Landroid/support/v4/td2;->goto:[Lorg/bouncycastle/asn1/super;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/td2;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/td2;->try:Landroid/support/v4/t62;

    iput-object v0, p0, Landroid/support/v4/td2;->case:Landroid/support/v4/y90;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iput-object v0, p0, Landroid/support/v4/td2;->else:Landroid/support/v4/import;

    return-void
.end method

.method private static case(Lorg/bouncycastle/asn1/case;)Lorg/bouncycastle/asn1/super;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/if;->final:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lorg/bouncycastle/asn1/n;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static else(I)Lorg/bouncycastle/asn1/super;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-static {p0}, Landroid/support/v4/af;->case(I)Landroid/support/v4/af;

    move-result-object p0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/if;->class:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lorg/bouncycastle/asn1/n;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private this(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;Lorg/bouncycastle/asn1/super;)V
    .locals 1

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/td2;->try(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method


# virtual methods
.method public break(Landroid/support/v4/y90;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/td2;->case:Landroid/support/v4/y90;

    return-void
.end method

.method public catch(Landroid/support/v4/fh2;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/td2;->break(Landroid/support/v4/y90;)V

    return-void
.end method

.method public class(Landroid/support/v4/tg2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/td2;->for:Landroid/support/v4/tg2;

    return-void
.end method

.method public const(Lorg/bouncycastle/asn1/x509/goto;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/goto;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/td2;->for:Landroid/support/v4/tg2;

    return-void
.end method

.method public do(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/td2;->if(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;ILorg/bouncycastle/asn1/case;)V

    return-void
.end method

.method public final(Landroid/support/v4/t62;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/td2;->try:Landroid/support/v4/t62;

    return-void
.end method

.method public for(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;Landroid/support/v4/y90;)V
    .locals 1

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/td2;->try(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method public goto()Lorg/bouncycastle/asn1/x509/case;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/td2;->if:Landroid/support/v4/b1;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/td2;->for:Landroid/support/v4/tg2;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/td2;->new:Landroid/support/v4/t62;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/td2;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/td2;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/td2;->for:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/td2;->new:Landroid/support/v4/t62;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/td2;->try:Landroid/support/v4/t62;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/td2;->else:Landroid/support/v4/import;

    invoke-virtual {v1}, Landroid/support/v4/import;->new()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/n;

    iget-object v2, p0, Landroid/support/v4/td2;->else:Landroid/support/v4/import;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/td2;->case:Landroid/support/v4/y90;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v4/td2;->case:Landroid/support/v4/y90;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/x509/case;

    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/case;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all mandatory fields set in V2 TBSCertList generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;ILorg/bouncycastle/asn1/case;)V
    .locals 3

    if-eqz p3, :cond_3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    sget-object v1, Landroid/support/v4/td2;->goto:[Lorg/bouncycastle/asn1/super;

    array-length v2, v1

    if-ge p3, v2, :cond_1

    if-ltz p3, :cond_0

    aget-object p3, v1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid reason value: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p3}, Landroid/support/v4/td2;->else(I)Lorg/bouncycastle/asn1/super;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p4, :cond_2

    invoke-static {p4}, Landroid/support/v4/td2;->case(Lorg/bouncycastle/asn1/case;)Lorg/bouncycastle/asn1/super;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance p3, Lorg/bouncycastle/asn1/n;

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/td2;->this(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;Lorg/bouncycastle/asn1/super;)V

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    new-instance p3, Landroid/support/v4/import;

    invoke-direct {p3}, Landroid/support/v4/import;-><init>()V

    invoke-static {p4}, Landroid/support/v4/td2;->case(Lorg/bouncycastle/asn1/case;)Lorg/bouncycastle/asn1/super;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p4, Lorg/bouncycastle/asn1/n;

    invoke-direct {p4, p3}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v4/td2;->this(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;Lorg/bouncycastle/asn1/super;)V

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/td2;->for(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;Landroid/support/v4/y90;)V

    :goto_1
    return-void
.end method

.method public import(Lorg/bouncycastle/asn1/native;)V
    .locals 1

    new-instance v0, Landroid/support/v4/t62;

    invoke-direct {v0, p1}, Landroid/support/v4/t62;-><init>(Lorg/bouncycastle/asn1/final;)V

    iput-object v0, p0, Landroid/support/v4/td2;->new:Landroid/support/v4/t62;

    return-void
.end method

.method public new(Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/native;I)V
    .locals 1

    new-instance v0, Landroid/support/v4/t62;

    invoke-direct {v0, p2}, Landroid/support/v4/t62;-><init>(Lorg/bouncycastle/asn1/final;)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v4/td2;->do(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;I)V

    return-void
.end method

.method public super(Lorg/bouncycastle/asn1/native;)V
    .locals 1

    new-instance v0, Landroid/support/v4/t62;

    invoke-direct {v0, p1}, Landroid/support/v4/t62;-><init>(Lorg/bouncycastle/asn1/final;)V

    iput-object v0, p0, Landroid/support/v4/td2;->try:Landroid/support/v4/t62;

    return-void
.end method

.method public throw(Landroid/support/v4/b1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/td2;->if:Landroid/support/v4/b1;

    return-void
.end method

.method public try(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/td2;->else:Landroid/support/v4/import;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public while(Landroid/support/v4/t62;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/td2;->new:Landroid/support/v4/t62;

    return-void
.end method
