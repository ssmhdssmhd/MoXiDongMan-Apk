package android.support.v4;

import androidx.annotation.Nullable;
import java.util.Arrays;
import org.chromium.base.task.TaskTraitsExtensionDescriptor;

/* loaded from: classes3.dex */
public class b52 {

    /* renamed from: break, reason: not valid java name */
    public static final b52 f343break;

    /* renamed from: catch, reason: not valid java name */
    public static final b52 f344catch;

    /* renamed from: class, reason: not valid java name */
    public static final b52 f345class;

    /* renamed from: const, reason: not valid java name */
    public static final b52 f346const;

    /* renamed from: else, reason: not valid java name */
    public static final byte f347else = 0;

    /* renamed from: final, reason: not valid java name */
    public static final b52 f348final;

    /* renamed from: goto, reason: not valid java name */
    public static final int f349goto = 4;

    /* renamed from: import, reason: not valid java name */
    public static final b52 f350import;

    /* renamed from: native, reason: not valid java name */
    public static final b52 f351native;

    /* renamed from: public, reason: not valid java name */
    public static final b52 f352public;

    /* renamed from: return, reason: not valid java name */
    public static final /* synthetic */ boolean f353return = false;

    /* renamed from: super, reason: not valid java name */
    public static final b52 f354super;

    /* renamed from: this, reason: not valid java name */
    public static final int f355this = 8;

    /* renamed from: throw, reason: not valid java name */
    public static final b52 f356throw;

    /* renamed from: while, reason: not valid java name */
    public static final b52 f357while;

    /* renamed from: case, reason: not valid java name */
    public boolean f358case;

    /* renamed from: do, reason: not valid java name */
    public int f359do;

    /* renamed from: for, reason: not valid java name */
    public boolean f360for;

    /* renamed from: if, reason: not valid java name */
    public boolean f361if;

    /* renamed from: new, reason: not valid java name */
    public byte f362new;

    /* renamed from: try, reason: not valid java name */
    public byte[] f363try;

    static {
        b52 b52VarM452new = new b52().m452new(0);
        f343break = b52VarM452new;
        f344catch = b52VarM452new.m450for();
        b52 b52VarM452new2 = new b52().m452new(1);
        f345class = b52VarM452new2;
        f346const = b52VarM452new2.m450for();
        b52 b52VarM452new3 = new b52().m452new(2);
        f348final = b52VarM452new3;
        f354super = b52VarM452new3.m450for();
        b52 b52Var = new b52();
        f356throw = b52Var;
        b52Var.f358case = true;
        b52 b52VarM452new4 = new b52().m453try().m452new(2);
        f357while = b52VarM452new4;
        f350import = b52VarM452new4.m452new(2);
        f351native = b52VarM452new4.m452new(1);
        f352public = b52VarM452new4.m452new(0);
    }

    private b52() {
        this.f359do = 2;
    }

    /* renamed from: case, reason: not valid java name */
    public b52 m447case() {
        return (this.f360for || m451if()) ? this : m453try();
    }

    /* renamed from: do, reason: not valid java name */
    public <Extension> Extension m448do(TaskTraitsExtensionDescriptor<Extension> taskTraitsExtensionDescriptor) {
        if (this.f362new == taskTraitsExtensionDescriptor.getId()) {
            return taskTraitsExtensionDescriptor.fromSerializedData(this.f363try);
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public <Extension> b52 m449else(TaskTraitsExtensionDescriptor<Extension> taskTraitsExtensionDescriptor, Extension extension) {
        int id = taskTraitsExtensionDescriptor.getId();
        byte[] serializedData = taskTraitsExtensionDescriptor.toSerializedData(extension);
        b52 b52Var = new b52(this);
        b52Var.f362new = (byte) id;
        b52Var.f363try = serializedData;
        return b52Var;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b52)) {
            return false;
        }
        b52 b52Var = (b52) obj;
        return this.f359do == b52Var.f359do && this.f361if == b52Var.f361if && this.f360for == b52Var.f360for && this.f362new == b52Var.f362new && Arrays.equals(this.f363try, b52Var.f363try) && this.f358case == b52Var.f358case;
    }

    /* renamed from: for, reason: not valid java name */
    public b52 m450for() {
        b52 b52Var = new b52(this);
        b52Var.f361if = true;
        return b52Var;
    }

    public int hashCode() {
        return ((((((((((1147 + this.f359do) * 37) + (!this.f361if ? 1 : 0)) * 37) + (!this.f360for ? 1 : 0)) * 37) + this.f362new) * 37) + Arrays.hashCode(this.f363try)) * 37) + (!this.f358case ? 1 : 0);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m451if() {
        return this.f362new != 0;
    }

    /* renamed from: new, reason: not valid java name */
    public b52 m452new(int i) {
        b52 b52Var = new b52(this);
        b52Var.f359do = i;
        return b52Var;
    }

    /* renamed from: try, reason: not valid java name */
    public b52 m453try() {
        b52 b52Var = new b52(this);
        b52Var.f360for = true;
        return b52Var;
    }

    private b52(b52 b52Var) {
        this.f359do = b52Var.f359do;
        this.f361if = b52Var.f361if;
        this.f360for = b52Var.f360for;
        this.f362new = b52Var.f362new;
        this.f363try = b52Var.f363try;
    }
}
