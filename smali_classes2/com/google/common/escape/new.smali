.class public final Lcom/google/common/escape/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/new$for;
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/escape/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/escape/new$do;

    invoke-direct {v0}, Lcom/google/common/escape/new$do;-><init>()V

    sput-object v0, Lcom/google/common/escape/new;->do:Lcom/google/common/escape/for;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static case([C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static do(Lcom/google/common/escape/for;)Lcom/google/common/escape/case;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/common/escape/case;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/common/escape/case;

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/google/common/escape/do;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lcom/google/common/escape/do;

    invoke-static {p0}, Lcom/google/common/escape/new;->else(Lcom/google/common/escape/do;)Lcom/google/common/escape/case;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a UnicodeEscaper from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static else(Lcom/google/common/escape/do;)Lcom/google/common/escape/case;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/escape/new$if;

    invoke-direct {v0, p0}, Lcom/google/common/escape/new$if;-><init>(Lcom/google/common/escape/do;)V

    return-object v0
.end method

.method public static for(Lcom/google/common/escape/do;C)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/escape/do;->for(C)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/new;->case([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if()Lcom/google/common/escape/new$for;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/escape/new$for;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/escape/new$for;-><init>(Lcom/google/common/escape/new$do;)V

    return-object v0
.end method

.method public static new(Lcom/google/common/escape/case;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/escape/case;->new(I)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/new;->case([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try()Lcom/google/common/escape/for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/escape/new;->do:Lcom/google/common/escape/for;

    return-object v0
.end method
