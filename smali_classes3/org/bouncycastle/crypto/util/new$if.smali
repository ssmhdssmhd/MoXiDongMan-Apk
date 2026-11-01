.class public final Lorg/bouncycastle/crypto/util/new$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private case:[B

.field private final do:Lorg/bouncycastle/crypto/util/new$for;

.field private for:Lorg/bouncycastle/asn1/class;

.field private if:Lorg/bouncycastle/asn1/class;

.field private new:Lorg/bouncycastle/asn1/class;

.field private try:Lorg/bouncycastle/asn1/class;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/util/new$for;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/new$if;->do:Lorg/bouncycastle/crypto/util/new$for;

    invoke-static {p2}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/new$if;->if:Lorg/bouncycastle/asn1/class;

    invoke-static {p3}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/new$if;->for:Lorg/bouncycastle/asn1/class;

    invoke-static {p4}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/new$if;->new:Lorg/bouncycastle/asn1/class;

    invoke-static {p5}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/new$if;->try:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method private if([B[B[B[B[B[B)[B
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object p1

    invoke-static {p4, p5, p6}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public do()Lorg/bouncycastle/crypto/util/new;
    .locals 10

    sget-object v0, Lorg/bouncycastle/crypto/util/new$do;->do:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->do:Lorg/bouncycastle/crypto/util/new$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown type encountered in build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lorg/bouncycastle/crypto/util/new;

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->do:Lorg/bouncycastle/crypto/util/new$for;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/new$for;->getHeader()[B

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->for:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->if:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->try:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->new:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/util/new$if;->case:[B

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/util/new$if;->if([B[B[B[B[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/util/new;-><init>([BLorg/bouncycastle/crypto/util/new$do;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/util/new;

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->do:Lorg/bouncycastle/crypto/util/new$for;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/new$for;->getHeader()[B

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->if:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->for:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->new:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/new$if;->try:Lorg/bouncycastle/asn1/class;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/util/new$if;->case:[B

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/util/new$if;->if([B[B[B[B[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/util/new;-><init>([BLorg/bouncycastle/crypto/util/new$do;)V

    return-object v0
.end method

.method public for([B)Lorg/bouncycastle/crypto/util/new$if;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/u;

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/case;->do([B)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/case;->if(Lorg/bouncycastle/asn1/final;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/new$if;->case:[B

    return-object p0
.end method
