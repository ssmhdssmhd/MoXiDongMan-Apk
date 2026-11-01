.class public Lorg/bouncycastle/util/test/do$do;
.super Lorg/bouncycastle/util/test/do$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/test/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/test/do;->access$000(I[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/test/do$try;-><init>([B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/test/do;->access$000(I[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/test/do$try;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/test/do$do;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/test/do$try;-><init>([B)V

    return-void
.end method
