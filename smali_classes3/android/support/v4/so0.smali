.class public Landroid/support/v4/so0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/so0;->do:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/so0;->if:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public do()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/so0;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/so0;->do:Ljava/lang/String;

    return-object v0
.end method
