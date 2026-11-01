.class public Lorg/bouncycastle/asn1/eac/for;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final break:I = 0x1

.field private static final catch:I = 0x2

.field private static final class:I = 0x4

.field private static final const:I = 0x8

.field private static final final:I = 0x10

.field public static final import:I = 0xd

.field private static final super:I = 0x20

.field private static final throw:I = 0x40

.field public static final while:I = 0x7f


# instance fields
.field private case:Lorg/bouncycastle/asn1/eac/new;

.field public do:Lorg/bouncycastle/asn1/else;

.field private else:Lorg/bouncycastle/asn1/do;

.field private for:Lorg/bouncycastle/asn1/do;

.field private goto:Lorg/bouncycastle/asn1/do;

.field private if:Lorg/bouncycastle/asn1/do;

.field private new:Landroid/support/v4/ug1;

.field private this:I

.field private try:Lorg/bouncycastle/asn1/do;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/for;->return(Lorg/bouncycastle/asn1/do;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/do;Landroid/support/v4/xg;Landroid/support/v4/ug1;Landroid/support/v4/sg;Lorg/bouncycastle/asn1/eac/new;Lorg/bouncycastle/asn1/eac/else;Lorg/bouncycastle/asn1/eac/else;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/for;->native(Lorg/bouncycastle/asn1/do;)V

    new-instance p1, Lorg/bouncycastle/asn1/transient;

    invoke-virtual {p2}, Landroid/support/v4/sg;->if()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-direct {p1, v1, p2}, Lorg/bouncycastle/asn1/transient;-><init>(I[B)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/for;->public(Lorg/bouncycastle/asn1/do;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/eac/for;->static(Landroid/support/v4/ug1;)V

    new-instance p1, Lorg/bouncycastle/asn1/transient;

    invoke-virtual {p4}, Landroid/support/v4/sg;->if()[B

    move-result-object p2

    const/16 p3, 0x20

    invoke-direct {p1, p3, p2}, Lorg/bouncycastle/asn1/transient;-><init>(I[B)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/for;->import(Lorg/bouncycastle/asn1/do;)V

    invoke-direct {p0, p5}, Lorg/bouncycastle/asn1/eac/for;->while(Lorg/bouncycastle/asn1/eac/new;)V

    :try_start_0
    new-instance p1, Lorg/bouncycastle/asn1/transient;

    const/16 p2, 0x25

    new-instance p3, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p6}, Lorg/bouncycastle/asn1/eac/else;->for()[B

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p1, v0, p2, p3}, Lorg/bouncycastle/asn1/transient;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/for;->super(Lorg/bouncycastle/asn1/do;)V

    new-instance p1, Lorg/bouncycastle/asn1/transient;

    const/16 p2, 0x24

    new-instance p3, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p7}, Lorg/bouncycastle/asn1/eac/else;->for()[B

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p1, v0, p2, p3}, Lorg/bouncycastle/asn1/transient;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/for;->throw(Lorg/bouncycastle/asn1/do;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unable to encode dates: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/for;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/for;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/for;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/eac/for;

    invoke-static {p0}, Lorg/bouncycastle/asn1/do;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/do;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/for;-><init>(Lorg/bouncycastle/asn1/do;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private const()Lorg/bouncycastle/asn1/final;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->if:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->for:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/transient;

    iget-object v2, p0, Lorg/bouncycastle/asn1/eac/for;->new:Landroid/support/v4/ug1;

    const/4 v3, 0x0

    const/16 v4, 0x49

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/transient;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->try:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->case:Lorg/bouncycastle/asn1/eac/new;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->else:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->goto:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/transient;

    const/16 v2, 0x4e

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/transient;-><init>(ILandroid/support/v4/import;)V

    return-object v1
.end method

.method private final()Lorg/bouncycastle/asn1/final;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->if:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/transient;

    iget-object v2, p0, Lorg/bouncycastle/asn1/eac/for;->new:Landroid/support/v4/ug1;

    const/4 v3, 0x0

    const/16 v4, 0x49

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/transient;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->try:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/transient;

    const/16 v2, 0x4e

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/transient;-><init>(ILandroid/support/v4/import;)V

    return-object v1
.end method

.method private import(Lorg/bouncycastle/asn1/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/for;->try:Lorg/bouncycastle/asn1/do;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.CARDHOLDER_NAME tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native(Lorg/bouncycastle/asn1/do;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/for;->if:Lorg/bouncycastle/asn1/do;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Iso7816Tags.INTERCHANGE_PROFILE tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/r30;->if(Lorg/bouncycastle/asn1/do;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private public(Lorg/bouncycastle/asn1/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/for;->for:Lorg/bouncycastle/asn1/do;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.ISSUER_IDENTIFICATION_NUMBER tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private return(Lorg/bouncycastle/asn1/do;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/else;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v2, v0, Lorg/bouncycastle/asn1/do;

    if-eqz v2, :cond_7

    check-cast v0, Lorg/bouncycastle/asn1/do;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x29

    if-eq v2, v3, :cond_4

    const/16 v3, 0x49

    if-eq v2, v3, :cond_3

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/for;->super(Lorg/bouncycastle/asn1/do;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid iso7816 ASN1ApplicationSpecific tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/for;->throw(Lorg/bouncycastle/asn1/do;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/eac/new;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/eac/new;-><init>(Lorg/bouncycastle/asn1/do;)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/eac/for;->while(Lorg/bouncycastle/asn1/eac/new;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/do;->throw(I)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ug1;->new(Ljava/lang/Object;)Landroid/support/v4/ug1;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/for;->static(Landroid/support/v4/ug1;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/for;->native(Lorg/bouncycastle/asn1/do;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/for;->import(Lorg/bouncycastle/asn1/do;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/for;->public(Lorg/bouncycastle/asn1/do;)V

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid iso7816 content : not a ASN1ApplicationSpecific Object :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/r30;->if(Lorg/bouncycastle/asn1/do;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    return-void

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad tag : not an iso7816 CERTIFICATE_CONTENT_TEMPLATE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static(Landroid/support/v4/ug1;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/ug1;->new(Ljava/lang/Object;)Landroid/support/v4/ug1;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/for;->new:Landroid/support/v4/ug1;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return-void
.end method

.method private super(Lorg/bouncycastle/asn1/do;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/for;->else:Lorg/bouncycastle/asn1/do;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Iso7816Tags.APPLICATION_EFFECTIVE_DATE tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/r30;->if(Lorg/bouncycastle/asn1/do;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throw(Lorg/bouncycastle/asn1/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/for;->goto:Lorg/bouncycastle/asn1/do;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.APPLICATION_EXPIRATION_DATE tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private while(Lorg/bouncycastle/asn1/eac/new;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/for;->case:Lorg/bouncycastle/asn1/eac/new;

    iget p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return-void
.end method


# virtual methods
.method public break()Landroid/support/v4/xg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/xg;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->for:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/xg;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certification authority reference not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public case()Lorg/bouncycastle/asn1/eac/new;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/for;->case:Lorg/bouncycastle/asn1/eac/new;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certificate Holder Authorisation not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public class()Landroid/support/v4/ug1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/for;->new:Landroid/support/v4/ug1;

    return-object v0
.end method

.method public else()Landroid/support/v4/sg;
    .locals 2

    new-instance v0, Landroid/support/v4/sg;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->try:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/sg;-><init>([B)V

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/do;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/for;->if:Lorg/bouncycastle/asn1/do;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/eac/else;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/else;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->else:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/else;-><init>([B)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public this()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/for;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/for;->final()Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/eac/else;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/for;->this:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/else;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/for;->goto:Lorg/bouncycastle/asn1/do;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/do;->class()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/else;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "certificate Expiration Date not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
