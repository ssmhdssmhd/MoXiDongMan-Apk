.class Lorg/bouncycastle/asn1/eac/case$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/eac/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public for:Ljava/lang/StringBuffer;

.field public if:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/eac/case$do;->if:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/case$do;->for:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/case$do;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/eac/case$do;->if:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/eac/case$do;->if:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/case$do;->for:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/case$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/case$do;->for:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/case$do;->for:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
