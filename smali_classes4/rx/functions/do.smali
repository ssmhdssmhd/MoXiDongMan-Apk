.class public final Lrx/functions/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/functions/do$final;,
        Lrx/functions/do$class;,
        Lrx/functions/do$const;
    }
.end annotation


# static fields
.field private static final do:Lrx/functions/do$const;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/functions/do$const;

    invoke-direct {v0}, Lrx/functions/do$const;-><init>()V

    sput-object v0, Lrx/functions/do;->do:Lrx/functions/do$const;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static break(Lrx/functions/Action3;)Lrx/functions/Func3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3<",
            "TT1;TT2;TT3;>;)",
            "Lrx/functions/Func3<",
            "TT1;TT2;TT3;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->catch(Lrx/functions/Action3;Ljava/lang/Object;)Lrx/functions/Func3;

    move-result-object p0

    return-object p0
.end method

.method public static case(Lrx/functions/Action1;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "TT1;>;)",
            "Lrx/functions/Func1<",
            "TT1;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->else(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lrx/functions/Action3;Ljava/lang/Object;)Lrx/functions/Func3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3<",
            "TT1;TT2;TT3;>;TR;)",
            "Lrx/functions/Func3<",
            "TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$case;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$case;-><init>(Lrx/functions/Action3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static class(Lrx/functions/Action4;)Lrx/functions/Func4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action4<",
            "TT1;TT2;TT3;TT4;>;)",
            "Lrx/functions/Func4<",
            "TT1;TT2;TT3;TT4;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->const(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;

    move-result-object p0

    return-object p0
.end method

.method public static const(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action4<",
            "TT1;TT2;TT3;TT4;>;TR;)",
            "Lrx/functions/Func4<",
            "TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$else;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$else;-><init>(Lrx/functions/Action4;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static default(Lrx/functions/ActionN;Ljava/lang/Object;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/ActionN;",
            "TR;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$if;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$if;-><init>(Lrx/functions/ActionN;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static do()Lrx/functions/do$const;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/do$const<",
            "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/functions/do;->do:Lrx/functions/do$const;

    return-object v0
.end method

.method public static else(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "TT1;>;TR;)",
            "Lrx/functions/Func1<",
            "TT1;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$new;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$new;-><init>(Lrx/functions/Action1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final(Lrx/functions/Action5;)Lrx/functions/Func5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action5<",
            "TT1;TT2;TT3;TT4;TT5;>;)",
            "Lrx/functions/Func5<",
            "TT1;TT2;TT3;TT4;TT5;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->super(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;

    move-result-object p0

    return-object p0
.end method

.method public static for(Lrx/functions/Action0;)Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/Action1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$class;

    invoke-direct {v0, p0}, Lrx/functions/do$class;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method

.method public static goto(Lrx/functions/Action2;)Lrx/functions/Func2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "TT1;TT2;>;)",
            "Lrx/functions/Func2<",
            "TT1;TT2;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->this(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;

    move-result-object p0

    return-object p0
.end method

.method public static if()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/functions/do$final;->INSTANCE:Lrx/functions/do$final;

    return-object v0
.end method

.method public static import(Lrx/functions/Action7;)Lrx/functions/Func7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)",
            "Lrx/functions/Func7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->native(Lrx/functions/Action7;Ljava/lang/Object;)Lrx/functions/Func7;

    move-result-object p0

    return-object p0
.end method

.method public static native(Lrx/functions/Action7;Ljava/lang/Object;)Lrx/functions/Func7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;TR;)",
            "Lrx/functions/Func7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$break;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$break;-><init>(Lrx/functions/Action7;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static new(Lrx/functions/Action0;)Lrx/functions/Func0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/Func0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->try(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;

    move-result-object p0

    return-object p0
.end method

.method public static public(Lrx/functions/Action8;)Lrx/functions/Func8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;)",
            "Lrx/functions/Func8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->return(Lrx/functions/Action8;Ljava/lang/Object;)Lrx/functions/Func8;

    move-result-object p0

    return-object p0
.end method

.method public static return(Lrx/functions/Action8;Ljava/lang/Object;)Lrx/functions/Func8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;TR;)",
            "Lrx/functions/Func8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$catch;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$catch;-><init>(Lrx/functions/Action8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static static(Lrx/functions/Action9;)Lrx/functions/Func9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;)",
            "Lrx/functions/Func9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->switch(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;

    move-result-object p0

    return-object p0
.end method

.method public static super(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action5<",
            "TT1;TT2;TT3;TT4;TT5;>;TR;)",
            "Lrx/functions/Func5<",
            "TT1;TT2;TT3;TT4;TT5;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$goto;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$goto;-><init>(Lrx/functions/Action5;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static switch(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;TR;)",
            "Lrx/functions/Func9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$do;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$do;-><init>(Lrx/functions/Action9;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static this(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "TT1;TT2;>;TR;)",
            "Lrx/functions/Func2<",
            "TT1;TT2;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$try;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$try;-><init>(Lrx/functions/Action2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static throw(Lrx/functions/Action6;)Lrx/functions/Func6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;)",
            "Lrx/functions/Func6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->while(Lrx/functions/Action6;Ljava/lang/Object;)Lrx/functions/Func6;

    move-result-object p0

    return-object p0
.end method

.method public static throws(Lrx/functions/ActionN;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/ActionN;",
            ")",
            "Lrx/functions/FuncN<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lrx/functions/do;->default(Lrx/functions/ActionN;Ljava/lang/Object;)Lrx/functions/FuncN;

    move-result-object p0

    return-object p0
.end method

.method public static try(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action0;",
            "TR;)",
            "Lrx/functions/Func0<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$for;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$for;-><init>(Lrx/functions/Action0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static while(Lrx/functions/Action6;Ljava/lang/Object;)Lrx/functions/Func6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;TR;)",
            "Lrx/functions/Func6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/do$this;

    invoke-direct {v0, p0, p1}, Lrx/functions/do$this;-><init>(Lrx/functions/Action6;Ljava/lang/Object;)V

    return-object v0
.end method
