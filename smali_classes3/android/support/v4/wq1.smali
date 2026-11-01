.class public Landroid/support/v4/wq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final for:Ljava/lang/String; = "SHA3-256"

.field public static final if:Ljava/lang/String; = "SHA512-256"


# instance fields
.field private final do:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SHA512-256"

    invoke-direct {p0, v0}, Landroid/support/v4/wq1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wq1;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wq1;->do:Ljava/lang/String;

    return-object v0
.end method
