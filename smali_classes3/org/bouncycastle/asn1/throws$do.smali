.class Lorg/bouncycastle/asn1/throws$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/throws;->import()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:I

.field public final synthetic if:Lorg/bouncycastle/asn1/throws;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/throws;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/throws$do;->if:Lorg/bouncycastle/asn1/throws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/throws$do;->do:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/throws$do;->do:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/throws$do;->if:Lorg/bouncycastle/asn1/throws;

    invoke-static {v1}, Lorg/bouncycastle/asn1/throws;->super(Lorg/bouncycastle/asn1/throws;)[Lorg/bouncycastle/asn1/class;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/throws$do;->if:Lorg/bouncycastle/asn1/throws;

    invoke-static {v0}, Lorg/bouncycastle/asn1/throws;->super(Lorg/bouncycastle/asn1/throws;)[Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/asn1/throws$do;->do:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/throws$do;->do:I

    aget-object v0, v0, v1

    return-object v0
.end method
