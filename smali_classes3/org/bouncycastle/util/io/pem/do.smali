.class public Lorg/bouncycastle/util/io/pem/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final new:Ljava/util/List;


# instance fields
.field private do:Ljava/lang/String;

.field private for:[B

.field private if:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/util/io/pem/do;->new:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/io/pem/do;->do:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/util/io/pem/do;->if:Ljava/util/List;

    iput-object p3, p0, Lorg/bouncycastle/util/io/pem/do;->for:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/util/io/pem/do;->new:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/util/io/pem/do;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/io/pem/do;->for:[B

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/io/pem/do;->do:Ljava/lang/String;

    return-object v0
.end method

.method public generate()Lorg/bouncycastle/util/io/pem/do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/zc1;
        }
    .end annotation

    return-object p0
.end method

.method public if()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/io/pem/do;->if:Ljava/util/List;

    return-object v0
.end method
