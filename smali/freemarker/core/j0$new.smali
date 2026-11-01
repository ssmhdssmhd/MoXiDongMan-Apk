.class Lfreemarker/core/j0$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field private for:I

.field private if:Ljava/lang/String;

.field private new:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/j0$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0$new;-><init>()V

    return-void
.end method

.method public static synthetic case(Lfreemarker/core/j0$new;I)I
    .locals 0

    .line 1
    iput p1, p0, Lfreemarker/core/j0$new;->for:I

    return p1
.end method

.method public static synthetic do(Lfreemarker/core/j0$new;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/j0$new;->do:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic else(Lfreemarker/core/j0$new;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/core/j0$new;->new:Z

    return p0
.end method

.method public static synthetic for(Lfreemarker/core/j0$new;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/j0$new;->if:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic goto(Lfreemarker/core/j0$new;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/core/j0$new;->new:Z

    return p1
.end method

.method public static synthetic if(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/j0$new;->do:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic new(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/j0$new;->if:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic try(Lfreemarker/core/j0$new;)I
    .locals 0

    .line 1
    iget p0, p0, Lfreemarker/core/j0$new;->for:I

    return p0
.end method
