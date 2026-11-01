.class Lorg/bouncycastle/pqc/crypto/gmss/for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pqc/crypto/gmss/for;-><init>(Lorg/bouncycastle/crypto/Digest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/util/Memoable;

.field public final synthetic if:Lorg/bouncycastle/pqc/crypto/gmss/for;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/for;Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/for$do;->if:Lorg/bouncycastle/pqc/crypto/gmss/for;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/for$do;->do:Lorg/bouncycastle/util/Memoable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for$do;->do:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
