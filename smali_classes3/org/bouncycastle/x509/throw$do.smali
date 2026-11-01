.class Lorg/bouncycastle/x509/throw$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/x509/throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Ljava/lang/Object;

.field public if:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/throw$do;->do:Ljava/lang/Object;

    iput-object p2, p0, Lorg/bouncycastle/x509/throw$do;->if:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/throw$do;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public if()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/throw$do;->if:Ljava/security/Provider;

    return-object v0
.end method
