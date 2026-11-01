.class public final Lrx/exceptions/if;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/if$do;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e77a2d646dfd3eL


# instance fields
.field private final hasValue:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lrx/exceptions/if;->hasValue:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lrx/exceptions/if;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lrx/exceptions/if;->hasValue:Z

    .line 6
    instance-of p1, p2, Ljava/io/Serializable;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 9
    :goto_0
    iput-object p2, p0, Lrx/exceptions/if;->value:Ljava/lang/Object;

    return-void
.end method

.method public static addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/s80;->if(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lrx/exceptions/if$do;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lrx/exceptions/if$do;

    invoke-virtual {v0}, Lrx/exceptions/if$do;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lrx/exceptions/if$do;

    invoke-direct {v0, p1}, Lrx/exceptions/if$do;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroid/support/v4/s80;->do(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static from(Ljava/lang/Throwable;)Lrx/exceptions/if;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/s80;->if(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lrx/exceptions/if$do;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lrx/exceptions/if;

    check-cast v0, Lrx/exceptions/if$do;

    invoke-virtual {v0}, Lrx/exceptions/if$do;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lrx/exceptions/if;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_1
    new-instance v0, Lrx/exceptions/if;

    invoke-direct {v0, p0}, Lrx/exceptions/if;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/exceptions/if;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isValueNull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/exceptions/if;->hasValue:Z

    return v0
.end method
