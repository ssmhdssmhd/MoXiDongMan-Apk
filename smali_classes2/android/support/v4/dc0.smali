.class public final Landroid/support/v4/dc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/bc0;

.field private final for:Landroid/support/v4/bc0;

.field private final if:Landroid/support/v4/bc0;


# direct methods
.method public constructor <init>([Landroid/support/v4/bc0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/support/v4/dc0;->do:Landroid/support/v4/bc0;

    const/4 v0, 0x1

    .line 3
    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/support/v4/dc0;->if:Landroid/support/v4/bc0;

    const/4 v0, 0x2

    .line 4
    aget-object p1, p1, v0

    iput-object p1, p0, Landroid/support/v4/dc0;->for:Landroid/support/v4/bc0;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/bc0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dc0;->do:Landroid/support/v4/bc0;

    return-object v0
.end method

.method public for()Landroid/support/v4/bc0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dc0;->for:Landroid/support/v4/bc0;

    return-object v0
.end method

.method public if()Landroid/support/v4/bc0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dc0;->if:Landroid/support/v4/bc0;

    return-object v0
.end method
