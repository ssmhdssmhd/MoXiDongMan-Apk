.class public Landroid/support/v4/b42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final case:Ljava/lang/String; = "key expansion"

.field public static final try:Ljava/lang/String; = "master secret"


# instance fields
.field private final do:[B

.field private final for:I

.field private final if:Ljava/lang/String;

.field private final new:[B


# direct methods
.method public varargs constructor <init>([BLjava/lang/String;I[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/b42;->do:[B

    iput-object p2, p0, Landroid/support/v4/b42;->if:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/b42;->for:I

    invoke-static {p4}, Landroid/support/v4/q3;->package([[B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/b42;->new:[B

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b42;->if:Ljava/lang/String;

    return-object v0
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b42;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/b42;->for:I

    return v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b42;->new:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
