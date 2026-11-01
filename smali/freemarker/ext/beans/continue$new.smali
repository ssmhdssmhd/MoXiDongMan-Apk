.class abstract Lfreemarker/ext/beans/continue$new;
.super Landroid/support/v4/al2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/continue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "new"
.end annotation


# instance fields
.field public final synthetic new:Lfreemarker/ext/beans/continue;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/continue;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/continue$new;->new:Lfreemarker/ext/beans/continue;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v4/al2;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lfreemarker/ext/beans/continue$new;->if(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract if(Ljava/lang/Object;)Ljava/lang/String;
.end method
