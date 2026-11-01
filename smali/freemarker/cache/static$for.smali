.class final Lfreemarker/cache/static$for;
.super Lfreemarker/cache/static;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/cache/static;-><init>(Lfreemarker/cache/static$do;)V

    const-string v0, "templateName"

    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "templateSource"

    .line 4
    invoke-static {v0, p2}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    instance-of v0, p2, Lfreemarker/cache/static;

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lfreemarker/cache/static$for;->do:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lfreemarker/cache/static$for;->if:Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lfreemarker/cache/static$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/static$for;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public for()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/static$for;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/static$for;->do:Ljava/lang/String;

    return-object v0
.end method

.method public try()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
