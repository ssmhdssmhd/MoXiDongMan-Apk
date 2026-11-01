.class Lorg/bouncycastle/asn1/x509/case$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x509/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field private final do:Ljava/util/Enumeration;

.field public final synthetic if:Lorg/bouncycastle/asn1/x509/case;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/case;Ljava/util/Enumeration;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/case$new;->if:Lorg/bouncycastle/asn1/x509/case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/case$new;->do:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case$new;->do:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case$new;->do:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/case$if;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/case$if;

    move-result-object v0

    return-object v0
.end method
