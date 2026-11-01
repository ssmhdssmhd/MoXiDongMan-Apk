.class public final Lrx/functions/if;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
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

.method public static break(Lrx/functions/Func5;)Lrx/functions/FuncN;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func5<",
            "-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$catch;

    invoke-direct {v0, p0}, Lrx/functions/if$catch;-><init>(Lrx/functions/Func5;)V

    return-object v0
.end method

.method public static case(Lrx/functions/Func1;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT0;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$else;

    invoke-direct {v0, p0}, Lrx/functions/if$else;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static catch(Lrx/functions/Func6;)Lrx/functions/FuncN;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func6<",
            "-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$class;

    invoke-direct {v0, p0}, Lrx/functions/if$class;-><init>(Lrx/functions/Func6;)V

    return-object v0
.end method

.method public static class(Lrx/functions/Func7;)Lrx/functions/FuncN;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func7<",
            "-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$const;

    invoke-direct {v0, p0}, Lrx/functions/if$const;-><init>(Lrx/functions/Func7;)V

    return-object v0
.end method

.method public static const(Lrx/functions/Func8;)Lrx/functions/FuncN;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func8<",
            "-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$final;

    invoke-direct {v0, p0}, Lrx/functions/if$final;-><init>(Lrx/functions/Func8;)V

    return-object v0
.end method

.method public static do(Lrx/functions/Action0;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/FuncN<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$if;

    invoke-direct {v0, p0}, Lrx/functions/if$if;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method

.method public static else(Lrx/functions/Func2;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func2<",
            "-TT0;-TT1;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$goto;

    invoke-direct {v0, p0}, Lrx/functions/if$goto;-><init>(Lrx/functions/Func2;)V

    return-object v0
.end method

.method public static final(Lrx/functions/Func9;)Lrx/functions/FuncN;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func9<",
            "-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$do;

    invoke-direct {v0, p0}, Lrx/functions/if$do;-><init>(Lrx/functions/Func9;)V

    return-object v0
.end method

.method public static for(Lrx/functions/Action2;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "-TT0;-TT1;>;)",
            "Lrx/functions/FuncN<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$new;

    invoke-direct {v0, p0}, Lrx/functions/if$new;-><init>(Lrx/functions/Action2;)V

    return-object v0
.end method

.method public static goto(Lrx/functions/Func3;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func3<",
            "-TT0;-TT1;-TT2;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$this;

    invoke-direct {v0, p0}, Lrx/functions/if$this;-><init>(Lrx/functions/Func3;)V

    return-object v0
.end method

.method public static if(Lrx/functions/Action1;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "-TT0;>;)",
            "Lrx/functions/FuncN<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$for;

    invoke-direct {v0, p0}, Lrx/functions/if$for;-><init>(Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static new(Lrx/functions/Action3;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3<",
            "-TT0;-TT1;-TT2;>;)",
            "Lrx/functions/FuncN<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$try;

    invoke-direct {v0, p0}, Lrx/functions/if$try;-><init>(Lrx/functions/Action3;)V

    return-object v0
.end method

.method public static this(Lrx/functions/Func4;)Lrx/functions/FuncN;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func4<",
            "-TT0;-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$break;

    invoke-direct {v0, p0}, Lrx/functions/if$break;-><init>(Lrx/functions/Func4;)V

    return-object v0
.end method

.method public static try(Lrx/functions/Func0;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/functions/if$case;

    invoke-direct {v0, p0}, Lrx/functions/if$case;-><init>(Lrx/functions/Func0;)V

    return-object v0
.end method
