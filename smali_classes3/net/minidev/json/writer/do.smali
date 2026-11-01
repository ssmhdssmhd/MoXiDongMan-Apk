.class public Lnet/minidev/json/writer/do;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/writer/do$while;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/minidev/json/writer/case<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static break:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static case:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static catch:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[F>;"
        }
    .end annotation
.end field

.field public static class:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static const:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[D>;"
        }
    .end annotation
.end field

.field public static do:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[I>;"
        }
    .end annotation
.end field

.field public static else:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[C>;"
        }
    .end annotation
.end field

.field public static final:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static for:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[S>;"
        }
    .end annotation
.end field

.field public static goto:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static if:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static new:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public static super:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static this:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[J>;"
        }
    .end annotation
.end field

.field public static throw:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static try:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/writer/do$goto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$goto;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->do:Lnet/minidev/json/writer/case;

    .line 2
    new-instance v0, Lnet/minidev/json/writer/do$this;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$this;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->if:Lnet/minidev/json/writer/case;

    .line 3
    new-instance v0, Lnet/minidev/json/writer/do$break;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$break;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->for:Lnet/minidev/json/writer/case;

    .line 4
    new-instance v0, Lnet/minidev/json/writer/do$catch;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$catch;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->new:Lnet/minidev/json/writer/case;

    .line 5
    new-instance v0, Lnet/minidev/json/writer/do$class;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$class;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->try:Lnet/minidev/json/writer/case;

    .line 6
    new-instance v0, Lnet/minidev/json/writer/do$const;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$const;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->case:Lnet/minidev/json/writer/case;

    .line 7
    new-instance v0, Lnet/minidev/json/writer/do$final;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$final;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->else:Lnet/minidev/json/writer/case;

    .line 8
    new-instance v0, Lnet/minidev/json/writer/do$super;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$super;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->goto:Lnet/minidev/json/writer/case;

    .line 9
    new-instance v0, Lnet/minidev/json/writer/do$throw;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$throw;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->this:Lnet/minidev/json/writer/case;

    .line 10
    new-instance v0, Lnet/minidev/json/writer/do$do;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$do;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->break:Lnet/minidev/json/writer/case;

    .line 11
    new-instance v0, Lnet/minidev/json/writer/do$if;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$if;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->catch:Lnet/minidev/json/writer/case;

    .line 12
    new-instance v0, Lnet/minidev/json/writer/do$for;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$for;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->class:Lnet/minidev/json/writer/case;

    .line 13
    new-instance v0, Lnet/minidev/json/writer/do$new;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$new;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->const:Lnet/minidev/json/writer/case;

    .line 14
    new-instance v0, Lnet/minidev/json/writer/do$try;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$try;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->final:Lnet/minidev/json/writer/case;

    .line 15
    new-instance v0, Lnet/minidev/json/writer/do$case;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$case;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->super:Lnet/minidev/json/writer/case;

    .line 16
    new-instance v0, Lnet/minidev/json/writer/do$else;

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/do$else;-><init>(Lnet/minidev/json/writer/try;)V

    sput-object v0, Lnet/minidev/json/writer/do;->throw:Lnet/minidev/json/writer/case;

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
