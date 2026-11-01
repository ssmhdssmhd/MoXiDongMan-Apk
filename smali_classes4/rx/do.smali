.class public final Lrx/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final new:Lrx/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/do<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final do:Lrx/do$do;

.field private final for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final if:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrx/do;

    sget-object v1, Lrx/do$do;->OnCompleted:Lrx/do$do;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lrx/do;-><init>(Lrx/do$do;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lrx/do;->new:Lrx/do;

    return-void
.end method

.method private constructor <init>(Lrx/do$do;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/do$do;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lrx/do;->for:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lrx/do;->if:Ljava/lang/Throwable;

    .line 4
    iput-object p1, p0, Lrx/do;->do:Lrx/do$do;

    return-void
.end method

.method public static for(Ljava/lang/Class;)Lrx/do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lrx/do<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object p0, Lrx/do;->new:Lrx/do;

    return-object p0
.end method

.method public static if()Lrx/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/do<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/do;->new:Lrx/do;

    return-object v0
.end method

.method public static new(Ljava/lang/Throwable;)Lrx/do;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/do<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/do;

    sget-object v1, Lrx/do$do;->OnError:Lrx/do$do;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lrx/do;-><init>(Lrx/do$do;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static try(Ljava/lang/Object;)Lrx/do;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/do<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/do;

    sget-object v1, Lrx/do$do;->OnNext:Lrx/do$do;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lrx/do;-><init>(Lrx/do$do;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/do;->const()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/do;->for:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public case()Lrx/do$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/do;->do:Lrx/do$do;

    return-object v0
.end method

.method public catch()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/do;->case()Lrx/do$do;

    move-result-object v0

    sget-object v1, Lrx/do$do;->OnCompleted:Lrx/do$do;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public class()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/do;->case()Lrx/do$do;

    move-result-object v0

    sget-object v1, Lrx/do$do;->OnError:Lrx/do$do;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public const()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/do;->case()Lrx/do$do;

    move-result-object v0

    sget-object v1, Lrx/do$do;->OnNext:Lrx/do$do;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public do(Lrx/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/do;->do:Lrx/do$do;

    sget-object v1, Lrx/do$do;->OnNext:Lrx/do$do;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lrx/do;->goto()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lrx/do$do;->OnCompleted:Lrx/do$do;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lrx/do;->else()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public else()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/do;->if:Ljava/lang/Throwable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lrx/do;

    if-eq v2, v3, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lrx/do;

    .line 3
    invoke-virtual {p1}, Lrx/do;->case()Lrx/do$do;

    move-result-object v2

    invoke-virtual {p0}, Lrx/do;->case()Lrx/do$do;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lrx/do;->for:Ljava/lang/Object;

    iget-object v3, p1, Lrx/do;->for:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lrx/do;->if:Ljava/lang/Throwable;

    iget-object p1, p1, Lrx/do;->if:Ljava/lang/Throwable;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public goto()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/do;->for:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/do;->case()Lrx/do$do;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lrx/do;->break()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-virtual {p0}, Lrx/do;->goto()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lrx/do;->this()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    invoke-virtual {p0}, Lrx/do;->else()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public this()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/do;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/do;->if:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/do;->case()Lrx/do$do;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lrx/do;->break()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/do;->goto()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lrx/do;->this()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/do;->else()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
