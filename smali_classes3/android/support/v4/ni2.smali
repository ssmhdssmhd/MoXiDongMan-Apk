.class public Landroid/support/v4/ni2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final case:Ljava/lang/String; = "SHAKE256"

.field public static final for:Ljava/lang/String; = "SHA256"

.field public static final new:Ljava/lang/String; = "SHA512"

.field public static final try:Ljava/lang/String; = "SHAKE128"


# instance fields
.field private final do:I

.field private final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/ni2;->do:I

    iput-object p2, p0, Landroid/support/v4/ni2;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ni2;->do:I

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ni2;->if:Ljava/lang/String;

    return-object v0
.end method
