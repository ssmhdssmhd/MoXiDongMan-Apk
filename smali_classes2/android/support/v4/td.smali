.class public Landroid/support/v4/td;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Ljava/lang/String;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/td;->do:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/support/v4/td;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/td;->do:Ljava/lang/String;

    return-object v0
.end method

.method public for(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/td;->do:Ljava/lang/String;

    return-void
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/td;->if:Ljava/lang/String;

    return-object v0
.end method

.method public new(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/td;->if:Ljava/lang/String;

    return-void
.end method
